{-# LANGUAGE
    GeneralizedNewtypeDeriving
  , TypeOperators
  , MultiParamTypeClasses
  , FlexibleInstances
  #-}

{-|

https://en.wikipedia.org/wiki/Metric_prefix

 -}

module Ghazan.Magnitude where

import Ghazan.Formula


-- | e18
newtype Exa a = Exa {getExa   :: a}
  deriving (Num, Eq, Ord, Show)

instance Converts a Exa Exa where
  convert = id

instance Fractional a => Converts a Exa Mono where
  convert (Exa x) = Mono (x * 1e-18)

instance Fractional a => Converts a Mono Exa where
  convert (Mono x) = Exa (x * 1e18)

instance Fractional a => Converts a Exa Peta where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Peta Exa where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Exa Tera where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Tera Exa where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Exa Giga where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Giga Exa where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Exa Mega where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Mega Exa where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Exa Kilo where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Kilo Exa where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Exa Hecto where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Hecto Exa where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Exa Deca where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Deca Exa where
  convert = convert . Mono . getMono . convert

--------------------------------------------------------------------------------
-- | e15
newtype Peta a = Peta {getPeta :: a}
  deriving (Num, Eq, Ord, Show)

instance Converts a Peta Peta where
  convert = id

instance Fractional a => Converts a Peta Mono where
  convert (Peta x) = Mono (x * 1e-15)

instance Fractional a => Converts a Mono Peta where
  convert (Mono x) = Peta (x * 1e15)

--------------------------------------------------------------------------------
-- | e12
newtype Tera a = Tera {getTera :: a}
  deriving (Num, Eq, Ord, Show)

instance Converts a Tera Tera where
  convert = id

instance Fractional a => Converts a Tera Mono where
  convert (Tera x) = Mono (x * 1e-12)

instance Fractional a => Converts a Mono Tera where
  convert (Mono x) = Tera (x * 1e12)

--------------------------------------------------------------------------------
-- | e9
newtype Giga a = Giga {getGiga :: a}
  deriving (Num, Eq, Ord, Show)

instance Converts a Giga Giga where
  convert = id

instance Fractional a => Converts a Giga Mono where
  convert (Giga x) = Mono (x * 1e-9)

instance Fractional a => Converts a Mono Giga where
  convert (Mono x) = Giga (x * 1e9)

--------------------------------------------------------------------------------
-- | e6
newtype Mega a = Mega {getMega :: a}
  deriving (Num, Eq, Ord, Show)

instance Converts a Mega Mega where
  convert = id

instance Fractional a => Converts a Mega Mono where
  convert (Mega x) = Mono (x * 1e-6)

instance Fractional a => Converts a Mono Mega where
  convert (Mono x) = Mega (x * 1e6)

--------------------------------------------------------------------------------
-- | e3
newtype Kilo a = Kilo {getKilo :: a}
  deriving (Num, Eq, Ord, Show)

instance Converts a Kilo Kilo where
  convert = id

instance Fractional a => Converts a Kilo Mono where
  convert (Kilo x) = Mono (x * 1e-3)

instance Fractional a => Converts a Mono Kilo where
  convert (Mono x) = Kilo (x * 1e3)

--------------------------------------------------------------------------------
-- | e2
newtype Hecto a = Hecto {getHecto :: a}
  deriving (Num, Eq, Ord, Show)

instance Converts a Hecto Hecto where
  convert = id

instance Fractional a => Converts a Hecto Mono where
  convert (Hecto x) = Mono (x * 1e-2)

instance Fractional a => Converts a Mono Hecto where
  convert (Mono x) = Hecto (x * 1e2)

--------------------------------------------------------------------------------
-- | e1
newtype Deca a = Deca {getDeca :: a}
  deriving (Num, Eq, Ord, Show)

instance Converts a Deca Deca where
  convert = id

instance Fractional a => Converts a Deca Mono where
  convert (Deca x) = Mono (x * 1e-1)

instance Fractional a => Converts a Mono Deca where
  convert (Mono x) = Deca (x * 1e1)

--------------------------------------------------------------------------------
-- | The "no-op" unit - @*1@
newtype Mono a = Mono {getMono :: a}
  deriving (Show)

instance Converts a Mono Mono where
  convert = id


--------------------------------------------------------------------------------
-- | e−1
newtype Deci a = Deci {getDeci :: a}
  deriving (Num, Eq, Ord, Show)

instance Converts a Deci Deci where
  convert = id

instance Fractional a => Converts a Deci Mono where
  convert (Deci x) = Mono (x * 1e1)

instance Fractional a => Converts a Mono Deci where
  convert (Mono x) = Deci (x * 1e-1)

--------------------------------------------------------------------------------
-- | e−2
newtype Centi a = Centi {getCenti :: a}
  deriving (Num, Eq, Ord, Show)

instance Converts a Centi Centi where
  convert = id

instance Fractional a => Converts a Centi Mono where
  convert (Centi x) = Mono (x * 1e2)

instance Fractional a => Converts a Mono Centi where
  convert (Mono x) = Centi (x * 1e-2)

--------------------------------------------------------------------------------
-- | e−3
newtype Milli a = Milli {getMilli :: a}
  deriving (Num, Eq, Ord, Show)

instance Converts a Milli Milli where
  convert = id

instance Fractional a => Converts a Milli Mono where
  convert (Milli x) = Mono (x * 1e3)

instance Fractional a => Converts a Mono Milli where
  convert (Mono x) = Milli (x * 1e-3)

--------------------------------------------------------------------------------
-- | e−6
newtype Micro a = Micro {getMicro :: a}
  deriving (Num, Eq, Ord, Show)

instance Converts a Micro Micro where
  convert = id

instance Fractional a => Converts a Micro Mono where
  convert (Micro x) = Mono (x * 1e6)

instance Fractional a => Converts a Mono Micro where
  convert (Mono x) = Micro (x * 1e-6)

--------------------------------------------------------------------------------
-- | e−9
newtype Nano a = Nano {getNano :: a}
  deriving (Num, Eq, Ord, Show)

instance Converts a Nano Nano where
  convert = id

instance Fractional a => Converts a Nano Mono where
  convert (Nano x) = Mono (x * 1e9)

instance Fractional a => Converts a Mono Nano where
  convert (Mono x) = Nano (x * 1e-9)

--------------------------------------------------------------------------------
-- | e−12
newtype Pico a = Pico {getPico :: a}
  deriving (Num, Eq, Ord, Show)

instance Converts a Pico Pico where
  convert = id

instance Fractional a => Converts a Pico Mono where
  convert (Pico x) = Mono (x * 1e12)

instance Fractional a => Converts a Mono Pico where
  convert (Mono x) = Pico (x * 1e-12)

--------------------------------------------------------------------------------
-- | e−15
newtype Femto a = Femto {getFemto :: a}
  deriving (Num, Eq, Ord, Show)

instance Converts a Femto Femto where
  convert = id

instance Fractional a => Converts a Femto Mono where
  convert (Femto x) = Mono (x * 1e15)

instance Fractional a => Converts a Mono Femto where
  convert (Mono x) = Femto (x * 1e-15)

--------------------------------------------------------------------------------
-- | e−18
newtype Atto a = Atto {getAtto :: a}
  deriving (Num, Eq, Ord, Show)

instance Converts a Atto Atto where
  convert = id

instance Fractional a => Converts a Atto Mono where
  convert (Atto x) = Mono (x * 1e18)

instance Fractional a => Converts a Mono Atto where
  convert (Mono x) = Atto (x * 1e-18)
