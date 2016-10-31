module PrettyPrinter (
       printTerm,     -- pretty printer para terminos
       printType,     -- pretty printer para tipos
       )
       where

import Common
import Text.PrettyPrint.HughesPJ

-- lista de posibles nombres para variables
vars :: [String]
vars = [ c : n | n <- "" : map show [1..], c <- ['x','y','z'] ++ ['a'..'w'] ]
              
parensIf :: Bool -> Doc -> Doc
parensIf True  = parens
parensIf False = id

-- pretty-printer de términos

pp :: Int -> [String] -> Term -> Doc
pp ii vs (Bound k)         = text (vs !! (ii - k - 1))
pp _  vs (Free (Global s)) = text s
pp ii vs (i :@: c)         = sep [parensIf (isLam i) (pp ii vs i), 
                                  nest 1 (parensIf (isLam c || isApp c) (pp ii vs c))]  
pp ii vs (Lam t c)   = text "\\" <>
                       text (vs !! ii) <>
                       text ":" <>
                       printType t <>
                       text ". " <> 
                       pp (ii+1) vs c
pp ii vs (Let t u)   = text "let " <>
                       text (vs !! ii) <>
                       text "=" <>
                       pp (ii) vs t <>
                       text " in " <>                   
                       pp (ii+1) vs u
pp ii vs (As t tt)   = pp ii vs t <>
                       text " as " <>
                       printType tt
pp ii vs TUnit       = text "unit "
pp ii vs (TPair t u) = text "(" <>
                       pp ii vs t <>
                       text ", " <>
                       pp ii vs u <>
                       text ")"
pp ii vs (Fst t)     = text "fst " <>
                       pp ii vs t
pp ii vs (Snd t)     = text "snd " <>
                       pp ii vs t
pp ii vs (Zero)      = text "0 "
pp ii vs (Suc t)     = text "suc " <>
                       pp ii vs t
pp ii vs (Rec t1 t2 t3) = text "R " <>
                          pp ii vs t1 <>
                          pp ii vs t2 <>
                          pp ii vs t3
                            
isLam (Lam _ _) = True
isLam  _      = False
   
isApp (_ :@: _) = True
isApp _         = False                                                               

-- pretty-printer de tipos
printType :: Type -> Doc
printType Base         = text "B"
printType (Fun t1 t2)  = sep [ parensIf (isFun t1) (printType t1), 
                               text "->", 
                               printType t2]
printType Unit         = text "Unit"
printType (Pair t u)   = text "(" <>
                         printType t <>
                         text ", " <>
                         printType u <>
                         text ")"
printType Nat          = text "Nat"

isFun (Fun _ _)        = True
isFun _                = False

fv :: Term -> [String]
fv (Bound _)         = []
fv (Free (Global n)) = [n]
fv (Free _)          = []
fv (t :@: u)         = fv t ++ fv u
fv (Lam _ u)         = fv u
fv (Let t u)         = fv t ++ fv u
fv (As t _)          = fv t
fv TUnit             = []
fv (TPair t u)       = fv t ++ fv u
fv (Fst t)           = fv t
fv (Snd t)           = fv t
fv Zero              = []
fv (Suc t)           = fv t
fv (Rec t1 t2 t3)    = fv t1 ++ fv t2 ++ fv t3
---
printTerm :: Term -> Doc 
printTerm t = pp 0 (filter (\v -> not $ elem v (fv t)) vars) t

