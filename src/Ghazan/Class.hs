{-# LANGUAGE
    MultiParamTypeClasses
  , KindSignatures
  #-}

module Ghazan.Class where


-- | Using an underlying numerical type @a@, we can impose
--   units @from@ and @to@ on top of it, such that 'convert'
--   will assume the correct behavior.
class Converts a (from :: * -> *) (to :: * -> *) where
  convert :: from a -> to a
