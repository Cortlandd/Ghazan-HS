{-# LANGUAGE
    TypeOperators
  , MultiParamTypeClasses
  #-}

module Formula.Class where


-- | Pronounced "Converts"
class from :=> to where
  convert :: from -> to


infixr 2 :=>
