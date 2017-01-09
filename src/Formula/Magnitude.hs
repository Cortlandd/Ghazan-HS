
{-|

https://en.wikipedia.org/wiki/Metric_prefix

 -}

module Formula.Magnitude where


newtype Exa   a = Exa   {getExa   :: a} --            1000000000000000000 	1018
  deriving (Num, Eq, Ord)
newtype Peta  a = Peta  {getPeta  :: a} --            1000000000000000 	1015
  deriving (Num, Eq, Ord)
newtype Tera  a = Tera  {getTera  :: a} --            1000000000000 	1012
  deriving (Num, Eq, Ord)
newtype Giga  a = Giga  {getGiga  :: a} --            1000000000 	109
  deriving (Num, Eq, Ord)
newtype Mega  a = Mega  {getMega  :: a} --            1000000 	106
  deriving (Num, Eq, Ord)
newtype Kilo  a = Kilo  {getKilo  :: a} --            1000 	103
  deriving (Num, Eq, Ord)
newtype Hecto a = Hecto {getHecto :: a} --            100 	102
  deriving (Num, Eq, Ord)
newtype Deca  a = Deca  {getDeca  :: a} --            10 	101
  deriving (Num, Eq, Ord)

-- | The "no-op" unit - @*1@
newtype Unit a = Unit {getUnit :: a}

newtype Deci  a = Deci  {getDeci  :: a}    -- d0.1 	10−1
  deriving (Num, Eq, Ord)
newtype Centi a = Centi {getCenti :: a}    -- c0.01 	10−2
  deriving (Num, Eq, Ord)
newtype Milli a = Milli {getMilli :: a}    -- m0.001 	10−3
  deriving (Num, Eq, Ord)
newtype Micro a = Micro {getMicro :: a}    -- μ0.000001 	10−6
  deriving (Num, Eq, Ord)
newtype Nano  a = Nano  {getNano  :: a}    -- n0.000000001 	10−9
  deriving (Num, Eq, Ord)
newtype Pico  a = Pico  {getPico  :: a}    -- p0.000000000001 	10−12
  deriving (Num, Eq, Ord)
newtype Femto a = Femto {getFemto :: a}    -- f0.000000000000001 	10−15
  deriving (Num, Eq, Ord)
newtype Atto  a = Atto  {getAtto  :: a}    -- a0.000000000000000001 	10−18
  deriving (Num, Eq, Ord)
