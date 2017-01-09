module Formula.Time (
  {- Convert Days -}
  -- Convert Day to Fortnight
    dTOfortN
  -- Convert Day to Hour
  , dTOhr
  -- Convert Day to Minute
  , dTOmin
  -- Convert Day to Second
  , dTOsec
  -- Convert Day to Week
  , dTOwk
  
  {- Convert Weeks -}
  -- Convert Weeks to Days
  , wkTOd
  
  -- { Convert Minutes}
  -- Convert Minutes to Days
  , minTOd
  
  {- Convert Seconds -}
  -- Convert Seconds to Days
  , secTOd
  
  {- Convert Hours -}
  -- Convert Hours to Days
  , hrTOd
  
  {- Convert Fortnights -}
  -- Convert Fortnights to Days
  , fortnTOd
  ) where

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
