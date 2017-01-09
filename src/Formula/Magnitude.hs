{-# LANGUAGE
    GeneralizedNewtypeDeriving
  , TypeOperators
  , MultiParamTypeClasses
  #-}

{-|

https://en.wikipedia.org/wiki/Metric_prefix

 -}

module Formula.Magnitude where

import Formula.Class


-- | e18
newtype Exa   a = Exa   {getExa   :: a}
  deriving (Num, Eq, Ord)

instance Fractional a => Exa a :=> Mono a where
  convert (Exa x) = Mono (x * 1e-18)

instance Fractional a => Mono a :=> Exa a where
  convert (Mono x) = Exa (x * 1e18)

--------------------------------------------------------------------------------
-- | e15
newtype Peta  a = Peta  {getPeta  :: a}
  deriving (Num, Eq, Ord)

instance Fractional a => Peta a :=> Mono a where
  convert (Peta x) = Mono (x * 1e-15)

instance Fractional a => Mono a :=> Peta a where
  convert (Mono x) = Peta (x * 1e15)

--------------------------------------------------------------------------------
-- | e12
newtype Tera  a = Tera  {getTera  :: a}
  deriving (Num, Eq, Ord)

instance Fractional a => Tera a :=> Mono a where
  convert (Tera x) = Mono (x * 1e-12)

instance Fractional a => Mono a :=> Tera a where
  convert (Mono x) = Tera (x * 1e12)

--------------------------------------------------------------------------------
-- | e9
newtype Giga  a = Giga  {getGiga  :: a}
  deriving (Num, Eq, Ord)

instance Fractional a => Giga a :=> Mono a where
  convert (Giga x) = Mono (x * 1e-9)

instance Fractional a => Mono a :=> Giga a where
  convert (Mono x) = Giga (x * 1e9)

--------------------------------------------------------------------------------
-- | e6
newtype Mega  a = Mega  {getMega  :: a}
  deriving (Num, Eq, Ord)

instance Fractional a => Mega a :=> Mono a where
  convert (Mega x) = Mono (x * 1e-6)

instance Fractional a => Mono a :=> Mega a where
  convert (Mono x) = Mega (x * 1e6)

--------------------------------------------------------------------------------
-- | e3
newtype Kilo  a = Kilo  {getKilo  :: a}
  deriving (Num, Eq, Ord)

instance Fractional a => Kilo a :=> Mono a where
  convert (Kilo x) = Mono (x * 1e-3)

instance Fractional a => Mono a :=> Kilo a where
  convert (Mono x) = Kilo (x * 1e3)

--------------------------------------------------------------------------------
-- | e2
newtype Hecto a = Hecto {getHecto :: a}
  deriving (Num, Eq, Ord)

instance Fractional a => Hecto a :=> Mono a where
  convert (Hecto x) = Mono (x * 1e-2)

instance Fractional a => Mono a :=> Hecto a where
  convert (Mono x) = Hecto (x * 1e2)

--------------------------------------------------------------------------------
-- | e1
newtype Deca  a = Deca  {getDeca  :: a}
  deriving (Num, Eq, Ord)

instance Fractional a => Deca a :=> Mono a where
  convert (Deca x) = Mono (x * 1e-1)

instance Fractional a => Mono a :=> Deca a where
  convert (Mono x) = Deca (x * 1e1)

--------------------------------------------------------------------------------
-- | The "no-op" unit - @*1@
newtype Mono  a = Mono  {getMono :: a}

--------------------------------------------------------------------------------
-- | e−1
newtype Deci  a = Deci  {getDeci  :: a}
  deriving (Num, Eq, Ord)

instance Fractional a => Deci a :=> Mono a where
  convert (Deci x) = Mono (x * 1e1)

instance Fractional a => Mono a :=> Deci a where
  convert (Mono x) = Deci (x * 1e-1)

--------------------------------------------------------------------------------
-- | e−2
newtype Centi a = Centi {getCenti :: a}
  deriving (Num, Eq, Ord)

instance Fractional a => Centi a :=> Mono a where
  convert (Centi x) = Mono (x * 1e2)

instance Fractional a => Mono a :=> Centi a where
  convert (Mono x) = Centi (x * 1e-2)

--------------------------------------------------------------------------------
-- | e−3
newtype Milli a = Milli {getMilli :: a}
  deriving (Num, Eq, Ord)

instance Fractional a => Milli a :=> Mono a where
  convert (Milli x) = Mono (x * 1e3)

instance Fractional a => Mono a :=> Milli a where
  convert (Mono x) = Milli (x * 1e-3)

--------------------------------------------------------------------------------
-- | e−6
newtype Micro a = Micro {getMicro :: a}
  deriving (Num, Eq, Ord)

instance Fractional a => Micro a :=> Mono a where
  convert (Micro x) = Mono (x * 1e6)

instance Fractional a => Mono a :=> Micro a where
  convert (Mono x) = Micro (x * 1e-6)

--------------------------------------------------------------------------------
-- | e−9
newtype Nano  a = Nano  {getNano  :: a}
  deriving (Num, Eq, Ord)

instance Fractional a => Nano a :=> Mono a where
  convert (Nano x) = Mono (x * 1e9)

instance Fractional a => Mono a :=> Nano a where
  convert (Mono x) = Nano (x * 1e-9)

--------------------------------------------------------------------------------
-- | e−12
newtype Pico  a = Pico  {getPico  :: a}
  deriving (Num, Eq, Ord)

instance Fractional a => Pico a :=> Mono a where
  convert (Pico x) = Mono (x * 1e12)

instance Fractional a => Mono a :=> Pico a where
  convert (Mono x) = Pico (x * 1e-12)

--------------------------------------------------------------------------------
-- | e−15
newtype Femto a = Femto {getFemto :: a}
  deriving (Num, Eq, Ord)

instance Fractional a => Femto a :=> Mono a where
  convert (Femto x) = Mono (x * 1e15)

instance Fractional a => Mono a :=> Femto a where
  convert (Mono x) = Femto (x * 1e-15)

--------------------------------------------------------------------------------
-- | e−18
newtype Atto  a = Atto  {getAtto  :: a}
  deriving (Num, Eq, Ord)

instance Fractional a => Atto a :=> Mono a where
  convert (Atto x) = Mono (x * 1e18)

instance Fractional a => Mono a :=> Atto a where
  convert (Mono x) = Atto (x * 1e-18)
