{-# LANGUAGE
    TypeOperators
  , MultiParamTypeClasses
  , KindSignatures
  #-}

module Formula.Class where


-- | Pronounced "Converts"
class (from :: * -> *) :=> (to :: * -> *) where
  -- | We only want to support newtypes that are generalized over some
  --   numeric implementation @a@ - therefore, the behavior is entirely
  --   dependent /and/ specified by @from@ and @to@.
  convert :: from a -> to a
