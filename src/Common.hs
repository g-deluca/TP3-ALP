module Common where

  -- Comandos interactivos o de archivos
  data Stmt i = Def String i           --  Declarar un nuevo identificador x, let x = t
              | Eval i                 --  Evaluar el término
    deriving (Show)
  
  instance Functor Stmt where
    fmap f (Def s i) = Def s (f i)
    fmap f (Eval i)  = Eval (f i)

  -- Tipos de los nombres
  data Name
     =  Global  String
     |  Quote   Int
    deriving (Show, Eq)

  -- Entornos
  type NameEnv v t = [(Name, (v, t))]

  -- Tipo de los tipos
  data Type = Base
            | Unit
            | Nat 
            | Fun Type Type
            | Pair Type Type

            deriving (Show, Eq)
  
  -- Términos con nombres
  data LamTerm  =  LVar String
                |  Abs String Type LamTerm
                |  App LamTerm LamTerm
                |  LamLet String LamTerm LamTerm   -- ete ta bien :)
                |  LamAs LamTerm Type
                |  LamUnit
                |  LamPair LamTerm LamTerm
                |  LamFst LamTerm
                |  LamSnd LamTerm
                |  LamZero
                |  LamSuc LamTerm
                |  LamRec LamTerm LamTerm LamTerm
                deriving (Show, Eq)


  -- Términos localmente sin nombres
  data Term  = Bound Int
             | Free Name 
             | Term :@: Term
             | Lam Type Term
             | Let Term Term  -- "pierdo" la información del nombre de la variable a sustituir,
                              -- porque en el eval lo reemplazo por un numerito, como con las abstraccciones
             | As Term Type
             | TUnit 
             | TPair Term Term
             | Fst Term
             | Snd Term
             | Zero
             | Suc Term
             | Rec Term Term Term
          deriving (Show, Eq)

  -- Valores
  data Value = VLam Type Term 
             | VUnit 
             | VPair Value Value
             | VZero
             | VSuc Value

  -- Contextos del tipado
  type Context = [Type]
