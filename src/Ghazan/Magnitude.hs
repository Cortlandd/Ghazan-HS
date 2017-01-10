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

instance Fractional a => Converts a Exa Femto where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Femto Exa where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Pico Exa where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Exa Pico where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Nano Exa where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Exa Nano where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Micro Exa where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Exa Micro where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Milli Exa where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Exa Milli where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Centi Exa where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Exa Centi where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Deci Exa where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Exa Deci where
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

instance Fractional a => Converts a Peta Tera where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Tera Peta where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Peta Giga where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Giga Peta where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Peta Mega where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Mega Peta where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Peta Kilo where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Kilo Peta where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Peta Hecto where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Hecto Peta where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Peta Deca where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Deca Peta where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Pico Peta where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Peta Pico where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Nano Peta where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Peta Nano where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Micro Peta where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Peta Micro where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Milli Peta where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Peta Milli where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Centi Peta where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Peta Centi where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Deci Peta where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Peta Deci where
  convert = convert . Mono . getMono . convert

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

instance Fractional a => Converts a Tera Giga where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Giga Tera where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Tera Mega where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Mega Tera where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Tera Kilo where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Kilo Tera where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Tera Hecto where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Hecto Tera where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Tera Deca where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Deca Tera where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Nano Tera where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Tera Nano where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Micro Tera where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Tera Micro where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Milli Tera where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Tera Milli where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Centi Tera where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Tera Centi where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Deci Tera where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Tera Deci where
  convert = convert . Mono . getMono . convert

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

instance Fractional a => Converts a Giga Mega where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Mega Giga where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Giga Kilo where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Kilo Giga where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Giga Hecto where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Hecto Giga where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Giga Deca where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Deca Giga where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Micro Giga where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Giga Micro where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Milli Giga where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Giga Milli where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Centi Giga where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Giga Centi where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Deci Giga where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Giga Deci where
  convert = convert . Mono . getMono . convert

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

instance Fractional a => Converts a Mega Kilo where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Kilo Mega where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Mega Hecto where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Hecto Mega where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Mega Deca where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Deca Mega where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Milli Mega where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Mega Milli where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Centi Mega where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Mega Centi where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Deci Mega where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Mega Deci where
  convert = convert . Mono . getMono . convert

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

instance Fractional a => Converts a Kilo Hecto where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Hecto Kilo where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Kilo Deca where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Deca Kilo where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Centi Kilo where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Kilo Centi where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Deci Kilo where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Kilo Deci where
  convert = convert . Mono . getMono . convert

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

instance Fractional a => Converts a Hecto Deca where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Deca Hecto where
  convert = convert . Mono . getMono . convert

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

instance Fractional a => Converts a Deci Centi where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Centi Deci where
  convert = convert . Mono . getMono . convert

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

instance Fractional a => Converts a Centi Milli where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Milli Centi where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Deci Milli where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Milli Deci where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Milli Hecto where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Hecto Milli where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Milli Deca where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Deca Milli where
  convert = convert . Mono . getMono . convert

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

instance Fractional a => Converts a Milli Micro where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Micro Milli where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Centi Micro where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Micro Centi where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Deci Micro where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Micro Deci where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Micro Kilo where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Kilo Micro where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Micro Hecto where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Hecto Micro where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Micro Deca where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Deca Micro where
  convert = convert . Mono . getMono . convert

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

instance Fractional a => Converts a Micro Nano where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Nano Micro where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Milli Nano where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Nano Milli where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Centi Nano where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Nano Centi where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Deci Nano where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Nano Deci where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Nano Mega where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Mega Nano where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Nano Kilo where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Kilo Nano where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Nano Hecto where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Hecto Nano where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Nano Deca where
  convert = convert . Mono . getMono . convert

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

instance Fractional a => Converts a Nano Pico where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Pico Nano where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Micro Pico where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Pico Micro where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Milli Pico where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Pico Milli where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Centi Pico where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Pico Centi where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Deci Pico where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Pico Deci where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Pico Giga where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Giga Pico where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Pico Mega where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Mega Pico where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Pico Kilo where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Kilo Pico where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Pico Hecto where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Hecto Pico where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Pico Deca where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Deca Pico where
  convert = convert . Mono . getMono . convert

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

instance Fractional a => Converts a Pico Femto where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Femto Pico where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Nano Femto where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Femto Nano where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Micro Femto where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Femto Micro where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Milli Femto where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Femto Milli where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Centi Femto where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Femto Centi where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Deci Femto where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Femto Deci where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Femto Tera where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Tera Femto where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Femto Giga where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Giga Femto where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Femto Mega where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Mega Femto where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Femto Kilo where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Kilo Femto where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Femto Hecto where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Hecto Femto where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Femto Deca where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Deca Femto where
  convert = convert . Mono . getMono . convert

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

instance Fractional a => Converts a Atto Femto where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Femto Atto where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Pico Atto where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Atto Pico where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Nano Atto where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Atto Nano where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Micro Atto where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Atto Micro where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Milli Atto where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Atto Milli where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Centi Atto where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Atto Centi where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Deci Atto where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Atto Deci where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Atto Peta where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Peta Atto where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Atto Tera where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Tera Atto where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Atto Giga where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Giga Atto where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Atto Mega where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Mega Atto where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Atto Kilo where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Kilo Atto where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Atto Hecto where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Hecto Atto where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Atto Deca where
  convert = convert . Mono . getMono . convert

instance Fractional a => Converts a Deca Atto where
  convert = convert . Mono . getMono . convert
