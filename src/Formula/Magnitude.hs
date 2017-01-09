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

instance Exa :=> Mono where
  convert (Exa x) = Mono (x * 1e18)

-- | e15
newtype Peta  a = Peta  {getPeta  :: a}
  deriving (Num, Eq, Ord)

-- | e12
newtype Tera  a = Tera  {getTera  :: a}
  deriving (Num, Eq, Ord)

-- | e9
newtype Giga  a = Giga  {getGiga  :: a}
  deriving (Num, Eq, Ord)

-- | e6
newtype Mega  a = Mega  {getMega  :: a}
  deriving (Num, Eq, Ord)

-- | e3
newtype Kilo  a = Kilo  {getKilo  :: a}
  deriving (Num, Eq, Ord)

-- | e2
newtype Hecto a = Hecto {getHecto :: a}
  deriving (Num, Eq, Ord)

-- | e1
newtype Deca  a = Deca  {getDeca  :: a}
  deriving (Num, Eq, Ord)

-- | The "no-op" unit - @*1@
newtype Mono  a = Mono  {getMono :: a}

-- | e−1
newtype Deci  a = Deci  {getDeci  :: a}
  deriving (Num, Eq, Ord)

-- | e−2
newtype Centi a = Centi {getCenti :: a}
  deriving (Num, Eq, Ord)

-- | e−3
newtype Milli a = Milli {getMilli :: a}
  deriving (Num, Eq, Ord)

-- | e−6
newtype Micro a = Micro {getMicro :: a}
  deriving (Num, Eq, Ord)

-- | e−9
newtype Nano  a = Nano  {getNano  :: a}
  deriving (Num, Eq, Ord)

-- | e−12
newtype Pico  a = Pico  {getPico  :: a}
  deriving (Num, Eq, Ord)

-- | e−15
newtype Femto a = Femto {getFemto :: a}
  deriving (Num, Eq, Ord)

-- | e−18
newtype Atto  a = Atto  {getAtto  :: a}
  deriving (Num, Eq, Ord)
