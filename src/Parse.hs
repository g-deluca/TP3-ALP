{-# OPTIONS_GHC -w #-}
module Parse where
import Common
import Data.Maybe
import Data.Char

-- parser produced by Happy Version 1.19.0

data HappyAbsSyn t6 t7 t15 t16
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 (LamTerm)
	| HappyAbsSyn15 t15
	| HappyAbsSyn16 t16

action_0 (19) = happyShift action_13
action_0 (22) = happyShift action_14
action_0 (25) = happyShift action_15
action_0 (26) = happyShift action_16
action_0 (28) = happyShift action_5
action_0 (29) = happyShift action_17
action_0 (32) = happyShift action_18
action_0 (34) = happyShift action_19
action_0 (35) = happyShift action_20
action_0 (36) = happyShift action_21
action_0 (37) = happyShift action_22
action_0 (6) = happyGoto action_25
action_0 (7) = happyGoto action_4
action_0 (8) = happyGoto action_26
action_0 (9) = happyGoto action_7
action_0 (10) = happyGoto action_8
action_0 (11) = happyGoto action_9
action_0 (12) = happyGoto action_10
action_0 (13) = happyGoto action_11
action_0 (14) = happyGoto action_12
action_0 _ = happyFail

action_1 (28) = happyShift action_5
action_1 (7) = happyGoto action_23
action_1 (16) = happyGoto action_24
action_1 _ = happyReduce_31

action_2 (19) = happyShift action_13
action_2 (22) = happyShift action_14
action_2 (25) = happyShift action_15
action_2 (26) = happyShift action_16
action_2 (29) = happyShift action_17
action_2 (32) = happyShift action_18
action_2 (34) = happyShift action_19
action_2 (35) = happyShift action_20
action_2 (36) = happyShift action_21
action_2 (37) = happyShift action_22
action_2 (8) = happyGoto action_6
action_2 (9) = happyGoto action_7
action_2 (10) = happyGoto action_8
action_2 (11) = happyGoto action_9
action_2 (12) = happyGoto action_10
action_2 (13) = happyGoto action_11
action_2 (14) = happyGoto action_12
action_2 _ = happyFail

action_3 (28) = happyShift action_5
action_3 (7) = happyGoto action_4
action_3 _ = happyFail

action_4 _ = happyReduce_3

action_5 (26) = happyShift action_37
action_5 _ = happyFail

action_6 (39) = happyAccept
action_6 _ = happyFail

action_7 (31) = happyShift action_36
action_7 _ = happyReduce_8

action_8 _ = happyReduce_10

action_9 _ = happyReduce_12

action_10 _ = happyReduce_14

action_11 (22) = happyShift action_14
action_11 (25) = happyShift action_15
action_11 (26) = happyShift action_16
action_11 (32) = happyShift action_18
action_11 (14) = happyGoto action_35
action_11 _ = happyReduce_17

action_12 _ = happyReduce_19

action_13 (26) = happyShift action_34
action_13 _ = happyFail

action_14 (19) = happyShift action_13
action_14 (22) = happyShift action_14
action_14 (25) = happyShift action_15
action_14 (26) = happyShift action_16
action_14 (29) = happyShift action_17
action_14 (32) = happyShift action_18
action_14 (34) = happyShift action_19
action_14 (35) = happyShift action_20
action_14 (36) = happyShift action_21
action_14 (37) = happyShift action_22
action_14 (8) = happyGoto action_33
action_14 (9) = happyGoto action_7
action_14 (10) = happyGoto action_8
action_14 (11) = happyGoto action_9
action_14 (12) = happyGoto action_10
action_14 (13) = happyGoto action_11
action_14 (14) = happyGoto action_12
action_14 _ = happyFail

action_15 _ = happyReduce_22

action_16 _ = happyReduce_20

action_17 (26) = happyShift action_32
action_17 _ = happyFail

action_18 _ = happyReduce_21

action_19 (22) = happyShift action_14
action_19 (25) = happyShift action_15
action_19 (26) = happyShift action_16
action_19 (32) = happyShift action_18
action_19 (34) = happyShift action_19
action_19 (35) = happyShift action_20
action_19 (12) = happyGoto action_31
action_19 (13) = happyGoto action_11
action_19 (14) = happyGoto action_12
action_19 _ = happyFail

action_20 (22) = happyShift action_14
action_20 (25) = happyShift action_15
action_20 (26) = happyShift action_16
action_20 (32) = happyShift action_18
action_20 (34) = happyShift action_19
action_20 (35) = happyShift action_20
action_20 (12) = happyGoto action_30
action_20 (13) = happyGoto action_11
action_20 (14) = happyGoto action_12
action_20 _ = happyFail

action_21 (22) = happyShift action_14
action_21 (25) = happyShift action_15
action_21 (26) = happyShift action_16
action_21 (32) = happyShift action_18
action_21 (34) = happyShift action_19
action_21 (35) = happyShift action_20
action_21 (36) = happyShift action_21
action_21 (11) = happyGoto action_29
action_21 (12) = happyGoto action_10
action_21 (13) = happyGoto action_11
action_21 (14) = happyGoto action_12
action_21 _ = happyFail

action_22 (22) = happyShift action_14
action_22 (25) = happyShift action_15
action_22 (26) = happyShift action_16
action_22 (32) = happyShift action_18
action_22 (14) = happyGoto action_28
action_22 _ = happyFail

action_23 (28) = happyShift action_5
action_23 (7) = happyGoto action_23
action_23 (16) = happyGoto action_27
action_23 _ = happyReduce_31

action_24 (39) = happyAccept
action_24 _ = happyFail

action_25 (39) = happyAccept
action_25 _ = happyFail

action_26 _ = happyReduce_4

action_27 _ = happyReduce_30

action_28 (22) = happyShift action_14
action_28 (25) = happyShift action_15
action_28 (26) = happyShift action_16
action_28 (32) = happyShift action_18
action_28 (14) = happyGoto action_48
action_28 _ = happyFail

action_29 _ = happyReduce_13

action_30 _ = happyReduce_16

action_31 _ = happyReduce_15

action_32 (17) = happyShift action_47
action_32 _ = happyFail

action_33 (21) = happyShift action_45
action_33 (23) = happyShift action_46
action_33 _ = happyFail

action_34 (18) = happyShift action_44
action_34 _ = happyFail

action_35 _ = happyReduce_18

action_36 (22) = happyShift action_40
action_36 (27) = happyShift action_41
action_36 (33) = happyShift action_42
action_36 (38) = happyShift action_43
action_36 (15) = happyGoto action_39
action_36 _ = happyFail

action_37 (17) = happyShift action_38
action_37 _ = happyFail

action_38 (19) = happyShift action_13
action_38 (22) = happyShift action_14
action_38 (25) = happyShift action_15
action_38 (26) = happyShift action_16
action_38 (29) = happyShift action_17
action_38 (32) = happyShift action_18
action_38 (34) = happyShift action_19
action_38 (35) = happyShift action_20
action_38 (36) = happyShift action_21
action_38 (37) = happyShift action_22
action_38 (8) = happyGoto action_55
action_38 (9) = happyGoto action_7
action_38 (10) = happyGoto action_8
action_38 (11) = happyGoto action_9
action_38 (12) = happyGoto action_10
action_38 (13) = happyGoto action_11
action_38 (14) = happyGoto action_12
action_38 _ = happyFail

action_39 (24) = happyShift action_54
action_39 _ = happyReduce_9

action_40 (22) = happyShift action_40
action_40 (27) = happyShift action_41
action_40 (33) = happyShift action_42
action_40 (38) = happyShift action_43
action_40 (15) = happyGoto action_53
action_40 _ = happyFail

action_41 _ = happyReduce_25

action_42 _ = happyReduce_26

action_43 _ = happyReduce_27

action_44 (22) = happyShift action_40
action_44 (27) = happyShift action_41
action_44 (33) = happyShift action_42
action_44 (38) = happyShift action_43
action_44 (15) = happyGoto action_52
action_44 _ = happyFail

action_45 (19) = happyShift action_13
action_45 (22) = happyShift action_14
action_45 (25) = happyShift action_15
action_45 (26) = happyShift action_16
action_45 (29) = happyShift action_17
action_45 (32) = happyShift action_18
action_45 (34) = happyShift action_19
action_45 (35) = happyShift action_20
action_45 (36) = happyShift action_21
action_45 (37) = happyShift action_22
action_45 (8) = happyGoto action_51
action_45 (9) = happyGoto action_7
action_45 (10) = happyGoto action_8
action_45 (11) = happyGoto action_9
action_45 (12) = happyGoto action_10
action_45 (13) = happyGoto action_11
action_45 (14) = happyGoto action_12
action_45 _ = happyFail

action_46 _ = happyReduce_24

action_47 (19) = happyShift action_13
action_47 (22) = happyShift action_14
action_47 (25) = happyShift action_15
action_47 (26) = happyShift action_16
action_47 (29) = happyShift action_17
action_47 (32) = happyShift action_18
action_47 (34) = happyShift action_19
action_47 (35) = happyShift action_20
action_47 (36) = happyShift action_21
action_47 (37) = happyShift action_22
action_47 (8) = happyGoto action_50
action_47 (9) = happyGoto action_7
action_47 (10) = happyGoto action_8
action_47 (11) = happyGoto action_9
action_47 (12) = happyGoto action_10
action_47 (13) = happyGoto action_11
action_47 (14) = happyGoto action_12
action_47 _ = happyFail

action_48 (22) = happyShift action_14
action_48 (25) = happyShift action_15
action_48 (26) = happyShift action_16
action_48 (32) = happyShift action_18
action_48 (14) = happyGoto action_49
action_48 _ = happyFail

action_49 _ = happyReduce_11

action_50 (30) = happyShift action_60
action_50 _ = happyFail

action_51 (23) = happyShift action_59
action_51 _ = happyFail

action_52 (20) = happyShift action_58
action_52 (24) = happyShift action_54
action_52 _ = happyFail

action_53 (23) = happyShift action_57
action_53 (24) = happyShift action_54
action_53 _ = happyFail

action_54 (22) = happyShift action_40
action_54 (27) = happyShift action_41
action_54 (33) = happyShift action_42
action_54 (38) = happyShift action_43
action_54 (15) = happyGoto action_56
action_54 _ = happyFail

action_55 _ = happyReduce_5

action_56 (24) = happyShift action_54
action_56 _ = happyReduce_28

action_57 _ = happyReduce_29

action_58 (19) = happyShift action_13
action_58 (22) = happyShift action_14
action_58 (25) = happyShift action_15
action_58 (26) = happyShift action_16
action_58 (29) = happyShift action_17
action_58 (32) = happyShift action_18
action_58 (34) = happyShift action_19
action_58 (35) = happyShift action_20
action_58 (36) = happyShift action_21
action_58 (37) = happyShift action_22
action_58 (8) = happyGoto action_62
action_58 (9) = happyGoto action_7
action_58 (10) = happyGoto action_8
action_58 (11) = happyGoto action_9
action_58 (12) = happyGoto action_10
action_58 (13) = happyGoto action_11
action_58 (14) = happyGoto action_12
action_58 _ = happyFail

action_59 _ = happyReduce_23

action_60 (19) = happyShift action_13
action_60 (22) = happyShift action_14
action_60 (25) = happyShift action_15
action_60 (26) = happyShift action_16
action_60 (29) = happyShift action_17
action_60 (32) = happyShift action_18
action_60 (34) = happyShift action_19
action_60 (35) = happyShift action_20
action_60 (36) = happyShift action_21
action_60 (37) = happyShift action_22
action_60 (8) = happyGoto action_61
action_60 (9) = happyGoto action_7
action_60 (10) = happyGoto action_8
action_60 (11) = happyGoto action_9
action_60 (12) = happyGoto action_10
action_60 (13) = happyGoto action_11
action_60 (14) = happyGoto action_12
action_60 _ = happyFail

action_61 _ = happyReduce_7

action_62 _ = happyReduce_6

happyReduce_3 = happySpecReduce_1  6 happyReduction_3
happyReduction_3 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_1  6 happyReduction_4
happyReduction_4 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn6
		 (Eval happy_var_1
	)
happyReduction_4 _  = notHappyAtAll 

happyReduce_5 = happyReduce 4 7 happyReduction_5
happyReduction_5 ((HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (Def happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_6 = happyReduce 6 8 happyReduction_6
happyReduction_6 ((HappyAbsSyn8  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (Abs happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_7 = happyReduce 6 8 happyReduction_7
happyReduction_7 ((HappyAbsSyn8  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (LamLet happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_8 = happySpecReduce_1  8 happyReduction_8
happyReduction_8 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  9 happyReduction_9
happyReduction_9 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (LamAs happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_1  9 happyReduction_10
happyReduction_10 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happyReduce 4 10 happyReduction_11
happyReduction_11 ((HappyAbsSyn8  happy_var_4) `HappyStk`
	(HappyAbsSyn8  happy_var_3) `HappyStk`
	(HappyAbsSyn8  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (LamRec happy_var_2 happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_12 = happySpecReduce_1  10 happyReduction_12
happyReduction_12 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_2  11 happyReduction_13
happyReduction_13 (HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (LamSuc happy_var_2
	)
happyReduction_13 _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_1  11 happyReduction_14
happyReduction_14 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_2  12 happyReduction_15
happyReduction_15 (HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (LamFst happy_var_2
	)
happyReduction_15 _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_2  12 happyReduction_16
happyReduction_16 (HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (LamSnd happy_var_2
	)
happyReduction_16 _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_1  12 happyReduction_17
happyReduction_17 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_2  13 happyReduction_18
happyReduction_18 (HappyAbsSyn8  happy_var_2)
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (App happy_var_1 happy_var_2
	)
happyReduction_18 _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  13 happyReduction_19
happyReduction_19 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  14 happyReduction_20
happyReduction_20 (HappyTerminal (TVar happy_var_1))
	 =  HappyAbsSyn8
		 (LVar happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  14 happyReduction_21
happyReduction_21 _
	 =  HappyAbsSyn8
		 (LamUnit
	)

happyReduce_22 = happySpecReduce_1  14 happyReduction_22
happyReduction_22 _
	 =  HappyAbsSyn8
		 (LamZero
	)

happyReduce_23 = happyReduce 5 14 happyReduction_23
happyReduction_23 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (LamPair happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_24 = happySpecReduce_3  14 happyReduction_24
happyReduction_24 _
	(HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (happy_var_2
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_1  15 happyReduction_25
happyReduction_25 _
	 =  HappyAbsSyn15
		 (Base
	)

happyReduce_26 = happySpecReduce_1  15 happyReduction_26
happyReduction_26 _
	 =  HappyAbsSyn15
		 (Unit
	)

happyReduce_27 = happySpecReduce_1  15 happyReduction_27
happyReduction_27 _
	 =  HappyAbsSyn15
		 (Nat
	)

happyReduce_28 = happySpecReduce_3  15 happyReduction_28
happyReduction_28 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (Fun happy_var_1 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  15 happyReduction_29
happyReduction_29 _
	(HappyAbsSyn15  happy_var_2)
	_
	 =  HappyAbsSyn15
		 (happy_var_2
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_2  16 happyReduction_30
happyReduction_30 (HappyAbsSyn16  happy_var_2)
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn16
		 (happy_var_1 : happy_var_2
	)
happyReduction_30 _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_0  16 happyReduction_31
happyReduction_31  =  HappyAbsSyn16
		 ([]
	)

happyNewToken action sts stk
	= lexer(\tk -> 
	let cont i = action i i tk (HappyState action) sts stk in
	case tk of {
	TEOF -> action 39 39 tk (HappyState action) sts stk;
	TEquals -> cont 17;
	TColon -> cont 18;
	TAbs -> cont 19;
	TDot -> cont 20;
	TComma -> cont 21;
	TOpen -> cont 22;
	TClose -> cont 23;
	TArrow -> cont 24;
	TZero -> cont 25;
	TVar happy_dollar_dollar -> cont 26;
	TType -> cont 27;
	TDef -> cont 28;
	TLet -> cont 29;
	TIn -> cont 30;
	TAs -> cont 31;
	TokUnit -> cont 32;
	TUType -> cont 33;
	TFst -> cont 34;
	TSnd -> cont 35;
	TSuc -> cont 36;
	TRec -> cont 37;
	TNType -> cont 38;
	_ -> happyError' tk
	})

happyError_ 39 tk = happyError' tk
happyError_ _ tk = happyError' tk

happyThen :: () => P a -> (a -> P b) -> P b
happyThen = (thenP)
happyReturn :: () => a -> P a
happyReturn = (returnP)
happyThen1 = happyThen
happyReturn1 :: () => a -> P a
happyReturn1 = happyReturn
happyError' :: () => (Token) -> P a
happyError' tk = (\token -> happyError) tk

parseStmt = happySomeParser where
  happySomeParser = happyThen (happyParse action_0) (\x -> case x of {HappyAbsSyn6 z -> happyReturn z; _other -> notHappyAtAll })

parseStmts = happySomeParser where
  happySomeParser = happyThen (happyParse action_1) (\x -> case x of {HappyAbsSyn16 z -> happyReturn z; _other -> notHappyAtAll })

term = happySomeParser where
  happySomeParser = happyThen (happyParse action_2) (\x -> case x of {HappyAbsSyn8 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


data ParseResult a = Ok a | Failed String
                     deriving Show                     
type LineNumber = Int
type P a = String -> LineNumber -> ParseResult a

getLineNo :: P LineNumber
getLineNo = \s l -> Ok l

thenP :: P a -> (a -> P b) -> P b
m `thenP` k = \s l-> case m s l of
                         Ok a     -> k a s l
                         Failed e -> Failed e
                         
returnP :: a -> P a
returnP a = \s l-> Ok a

failP :: String -> P a
failP err = \s l -> Failed err

catchP :: P a -> (String -> P a) -> P a
catchP m k = \s l -> case m s l of
                        Ok a     -> Ok a
                        Failed e -> k e s l

happyError :: P a
happyError = \ s i -> Failed $ "Línea "++(show (i::LineNumber))++": Error de parseo\n"++(s)

data Token = TVar String
               | TType
               | TDef
               | TAbs
               | TDot
               | TComma
               | TOpen
               | TClose 
               | TColon
               | TArrow
               | TEquals
               | TEOF
               | TLet
               | TIn
               | TAs
               | TokUnit
               | TUType
               | TFst
               | TSnd
               | TZero
               | TSuc
               | TRec
               | TNType
               deriving Show

----------------------------------
lexer cont s = case s of
                    [] -> cont TEOF []
                    ('\n':s)  ->  \line -> lexer cont s (line + 1)
                    (c:cs)
                          | isSpace c -> lexer cont cs
                          | isAlpha c -> lexVar (c:cs)
                    ('-':('-':cs)) -> lexer cont $ dropWhile ((/=) '\n') cs
                    ('{':('-':cs)) -> consumirBK 0 0 cont cs
                    ('-':('}':cs)) -> \ line -> Failed $ "Línea "++(show line)++": Comentario no abierto"
                    ('-':('>':cs)) -> cont TArrow cs
                    ('\\':cs)-> cont TAbs cs
                    ('.':cs) -> cont TDot cs
                    ('(':cs) -> cont TOpen cs
                    (',':cs) -> cont TComma cs
                    ('-':('>':cs)) -> cont TArrow cs
                    (')':cs) -> cont TClose cs
                    (':':cs) -> cont TColon cs
                    ('=':cs) -> cont TEquals cs
                    ('0':cs) -> cont TZero cs
                    unknown -> \line -> Failed $ "Línea "++(show line)++": No se puede reconocer "++(show $ take 10 unknown)++ "..."
                    where lexVar cs = case span isAlpha cs of
                                           ("B",rest)   -> cont TType rest
                                           ("Unit",rest)-> cont TUType rest
                                           ("Nat", rest)-> cont TNType rest
                                           ("def",rest) -> cont TDef rest
                                           ("let",rest) -> cont (TLet) rest       
                                           ("in",rest)  -> cont (TIn) rest
                                           ("as",rest)  -> cont (TAs) rest
                                           ("unit",rest)-> cont TokUnit rest
                                           ("fst",rest) -> cont TFst rest
                                           ("snd",rest) -> cont TSnd rest
                                           ("suc",rest) -> cont TSuc rest
                                           ("R",rest) -> cont TRec rest
                                           (var,rest)   -> cont (TVar var) rest
                          consumirBK anidado cl cont s = case s of
                                                                      ('-':('-':cs)) -> consumirBK anidado cl cont $ dropWhile ((/=) '\n') cs
		                                                      ('{':('-':cs)) -> consumirBK (anidado+1) cl cont cs	
		                                                      ('-':('}':cs)) -> case anidado of
			                                                                     0 -> \line -> lexer cont cs (line+cl)
			                                                                     _ -> consumirBK (anidado-1) cl cont cs
		                                                      ('\n':cs) -> consumirBK anidado (cl+1) cont cs
		                                                      (_:cs) -> consumirBK anidado cl cont cs     
                                           
stmts_parse s = parseStmts s 1
stmt_parse s = parseStmt s 1
term_parse s = term s 1
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<command-line>" #-}





# 1 "/usr/include/stdc-predef.h" 1 3 4

# 17 "/usr/include/stdc-predef.h" 3 4














# 1 "/usr/include/x86_64-linux-gnu/bits/predefs.h" 1 3 4

# 18 "/usr/include/x86_64-linux-gnu/bits/predefs.h" 3 4












# 31 "/usr/include/stdc-predef.h" 2 3 4








# 5 "<command-line>" 2
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 

{-# LINE 13 "templates/GenericTemplate.hs" #-}

{-# LINE 45 "templates/GenericTemplate.hs" #-}








{-# LINE 66 "templates/GenericTemplate.hs" #-}

{-# LINE 76 "templates/GenericTemplate.hs" #-}

{-# LINE 85 "templates/GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
	happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
	 (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 154 "templates/GenericTemplate.hs" #-}

-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
	 sts1@(((st1@(HappyState (action))):(_))) ->
        	let r = fn stk in  -- it doesn't hurt to always seq here...
       		happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 255 "templates/GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--	trace "failing" $ 
        happyError_ i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
						(saved_tok `HappyStk` _ `HappyStk` stk) =
--	trace ("discarding state, depth " ++ show (length stk))  $
	action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail  i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
	action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--	happySeq = happyDoSeq
-- otherwise it emits
-- 	happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 321 "templates/GenericTemplate.hs" #-}
{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
