{-# LANGUAGE
    TypeOperators
  , MultiParamTypeClasses
  #-}

module Formula.Class where


-- | Pronounced "Converts To"
class a :=> b where
  to :: a -> b
