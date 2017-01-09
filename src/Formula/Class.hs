{-# LANGUAGE
    TypeOperators
  , MultiParamTypeClasses
  #-}

module Formula.Class where


class a :=> b where
  convert :: a -> b
