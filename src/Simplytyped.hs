module Simplytyped (
       conversion,    -- conversion a terminos localmente sin nombre
       eval,          -- evaluador
       infer,         -- inferidor de tipos
       quote          -- valores -> terminos
       )
       where

import Data.List
import Data.Maybe
import Prelude hiding ((>>=))
import Text.PrettyPrint.HughesPJ (render)
import PrettyPrinter
import Common

-- conversion a términos localmente sin nombres
conversion :: LamTerm -> Term
conversion = conversion' []

conversion' :: [String] -> LamTerm -> Term
conversion' b (LVar n)          = maybe (Free (Global n)) Bound (n `elemIndex` b)
conversion' b (App t u)         = conversion' b t :@: conversion' b u
conversion' b (Abs n t u)       = Lam t (conversion' (n:b) u)
conversion' b (LamLet n t u)    = Let (conversion' b t) (conversion' (n:b) u) 
conversion' b (LamAs t tt)      = As (conversion' b t) tt
conversion' b (LamUnit)         = TUnit
conversion' b (LamPair t u)     = TPair (conversion' b t) (conversion' b u)
conversion' b (LamFst t)        = Fst (conversion' b t)
conversion' b (LamSnd t)        = Snd (conversion' b t)
conversion' b (LamZero)         = Zero
conversion' b (LamSuc t)        = Suc (conversion' b t)
conversion' b (LamRec t1 t2 t3) = Rec (conversion' b t1) (conversion' b t2) (conversion' b t3)

-----------------------
--- eval
-----------------------

sub :: Int -> Term -> Term -> Term 
sub i t (Bound j) | i == j    = t
sub _ _ (Bound j) | otherwise = Bound j
sub _ _ (Free n)              = Free n
sub i t (u :@: v)             = sub i t u :@: sub i t v
sub i t (Lam t' u)            = Lam t' (sub (i+1) t u)
sub i t (Let t' u)            = Let (sub (i+1) t t') (sub (i+1) t u)
sub i t (As t' tt)            = As (sub i t t') tt
sub i t TUnit                 = TUnit
sub i t (TPair t' u)          = TPair (sub i t t') (sub i t u) 
sub i t (Fst t')              = Fst (sub i t t')
sub i t (Snd t')              = Snd (sub i t t')
sub i t Zero                  = Zero
sub i t (Suc t')              = Suc (sub i t t')
sub i t (Rec t1 t2 t3)        = Rec (sub i t t1) (sub i t t2) (sub i t t3)


-- evaluador de términos
{- Aclaración: todos los errores a continuación están para explicitar los términos
 - atascados, sin embargo nunca serán matcheados porque el type checker se encargará
 - de que los términos que lleguen no se atasquen. -}

eval :: NameEnv Value Type -> Term -> Value
eval _ (Bound _)                = error "variable ligada inesperada en eval"
eval e (Free n)                 = fst $ fromJust $ lookup n e
eval _ (Lam t u)                = VLam t u
eval e (Lam _ u :@: Lam s v)    = eval e (sub 0 (Lam s v) u)
eval e (Lam _ u :@: TUnit)      = eval e (sub 0 TUnit u)
eval e (Lam _ u :@: TPair t u') = eval e (sub 0 (TPair t u') u)
eval e (Lam _ u :@: Zero)       = eval e (sub 0 Zero u)
eval e (Lam _ u :@: Suc t)      = eval e (sub 0 (Suc t) u)
eval e (Lam t u :@: w)          = case eval e w of
                    VLam t' u' -> eval e (Lam t u :@: Lam t' u')
                    VUnit      -> eval e (Lam t u :@: TUnit)
                    VPair v v' -> eval e (Lam t u :@: quote (VPair v v'))
                    VZero      -> eval e (Lam t u :@: Zero)
                    VSuc v     -> eval e (Lam t u :@: quote (VSuc v))
eval e (u :@: v)                = case eval e u of
                    VLam t  u' -> eval e (Lam t u' :@: v)
                    _          -> error "El término recibido no puede ser aplicado (no es función)"   
eval e (Let t u)                = case eval e t of
                    VLam t' u' -> eval e (sub 0 (Lam t' u') u) 
                    VUnit      -> eval e (sub 0 TUnit u) 
                    VPair v v' -> eval e (sub 0 (quote (VPair v v')) u)
                    VZero      -> eval e (sub 0 Zero u)
                    VSuc v     -> eval e (sub 0 (quote (VSuc v)) u)
eval e (As t tt)                = eval e t
eval e TUnit                    = VUnit
eval e (TPair t u)              = case eval e t of
                    VLam t' u' -> VPair (VLam t' u') (eval e u) 
                    VUnit      -> VPair VUnit (eval e u)
                    VPair v v' -> VPair (VPair v v') (eval e u)
                    VZero      -> VPair VZero (eval e u)
                    VSuc v     -> VPair (VSuc v) (eval e u)
eval e (Fst t)                  = case eval e t of
                    VPair v v' -> eval e (quote v)
                    _          -> error "El término no es un par"
eval e (Snd t)                  = case eval e t of
                    VPair v v' -> eval e (quote v')
                    _          -> error "El término no es un par"
eval e Zero                     = VZero
eval e (Suc t)                  = VSuc (eval e t)


eval e (Rec t1 t2 t3)           = case eval e t3 of
                   VZero       -> eval e t1
                   VSuc t      -> eval e (t2 :@:  Rec t1 t2 (quote t) :@:  quote t)
                   _           -> error "El tercer argumento no es un natural" 

-----------------------
--- quoting
-----------------------

quote :: Value -> Term
quote (VLam t f) = Lam t f
quote VUnit = TUnit
quote (VPair v v') = TPair (quote v) (quote v')
quote VZero = Zero
quote (VSuc v) = Suc (quote v)

----------------------
--- type checker
-----------------------

-- type checker
infer :: NameEnv Value Type -> Term -> Either String Type
infer = infer' []

-- definiciones auxiliares
ret :: Type -> Either String Type
ret = Right

err :: String -> Either String Type
err = Left

(>>=) :: Either String Type -> (Type -> Either String Type) -> Either String Type
(>>=) v f = either Left f v
-- fcs. de error

matchError :: Type -> Type -> Either String Type
matchError t1 t2 = err $ "se esperaba " ++
                         render (printType t1) ++
                         ", pero " ++
                         render (printType t2) ++
                         " fue inferido."

notpairError :: Type -> Either String Type
notpairError t1 = err $ render (printType t1) ++ " no es un par."

notnatError :: Type -> Either String Type
notnatError t1 = err $ render (printType t1) ++ " no es un natural."

notfunError :: Type -> Either String Type
notfunError t1 = err $ render (printType t1) ++ " no puede ser aplicado."

notfoundError :: Name -> Either String Type
notfoundError n = err $ show n ++ " no está definida."

infer' :: Context -> NameEnv Value Type -> Term -> Either String Type
infer' c _ (Bound i) = ret (c !! i)
infer' _ e (Free n) = case lookup n e of
                        Nothing -> notfoundError n
                        Just (_,t) -> ret t
infer' c e (t :@: u) = infer' c e t >>= \tt -> 
                       infer' c e u >>= \tu ->
                       case tt of
                         Fun t1 t2 -> if (tu == t1) 
                                        then ret t2
                                        else matchError t1 tu
                         _         -> notfunError tt
infer' c e (Lam t u) = infer' (t:c) e u >>= \tu ->
                       ret $ Fun t tu
infer' c e (Let t u) = infer' c e t >>= \tt -> infer' (tt:c) e u 
infer' c e (As t tt) = infer' c e t >>= \tt' -> if tt==tt' then ret tt else matchError tt tt'                        
infer' c e TUnit = ret Unit
infer' c e (TPair t u) = infer' c e t >>= \tt -> 
                         infer' c e u >>= \tu ->
                         ret $ Pair tt tu
infer' c e (Fst t) = infer' c e t >>= \tt -> case tt of
                         Pair t1 t2 -> ret t1
                         _          -> notpairError tt

infer' c e (Snd t) = infer' c e t >>= \tt -> case tt of
                         Pair t1 t2 -> ret t2
                         _          -> notpairError tt 
infer' c e Zero = ret Nat
infer' c e (Suc t) = infer' c e t >>= \tt -> case tt of
                         Nat -> ret Nat
                         _   -> notnatError tt
infer' c e (Rec t1 t2 t3) = infer' c e t1 >>= \tt1 ->
                            infer' c e t2 >>= \tt2 ->
                            infer' c e t3 >>= \tt3 ->
                            if tt2 == (Fun tt1 (Fun Nat tt1)) then  case tt3 of 
                                                                     Nat -> ret tt1
                                                                     _   -> matchError Nat tt3
                                                              else  matchError (Fun tt1 (Fun Nat tt1)) tt2
----------------------------------
