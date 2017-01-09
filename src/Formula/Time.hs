{-# LANGUAGE
    GeneralizedNewtypeDeriving
  #-}

module Formula.Time where

{- Days -}
dTOfortN :: Floating a => a -> a
dTOfortN x = x / 14

dTOhr :: Floating a => a -> a
dTOhr x = x * 24

dTOmin :: Floating a => a -> a
dTOmin x = x * 1440

dTOsec :: Floating a => a -> a
dTOsec x = x * 86400

dTOwk :: Floating a => a -> a
dTOwk x = x / 7

{- Weeks -}
wkTOd :: Floating a => a -> a
wkTOd x = x * 7

{- Minutes -}
minTOd :: Floating a => a -> a
minTOd x = x / 1440

{- Seconds-}
secTOd :: Floating a => a -> a
secTOd x = x / 86400

{- Hours -}
hrTOd :: Floating a => a -> a
hrTOd x = x / 24

{- Fortnights -}
fortnTOd :: Floating a => a -> a
fortnTOd x = x * 14 


-- * Types

newtype Second a = Second {getSecond :: a}
  deriving (Num, Eq, Ord)

newtype Minute a = Minute {getMinute :: a}
  deriving (Num, Eq, Ord)

newtype Hour a = Hour {getHour :: a}
  deriving (Num, Eq, Ord)

newtype Day a = Day {getDay :: a}
  deriving (Num, Eq, Ord)

newtype Week a = Week {getWeek :: a}
  deriving (Num, Eq, Ord)

newtype Fortnight a = Fortnight {getFortnight :: a}
  deriving (Num, Eq, Ord)
