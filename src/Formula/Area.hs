module Formula.Area (
  -- Convert Square Inches to Square Kilometer
  sqInTOsqKm
  -- Convert Square Inches to Square Meters
  sqInTOsqM
  -- Convert Square Inches to Square Feet
  sqInTOsqFt
  -- Convert Square Inches to Hectares
  sqInTOhec
  -- Convert Square Inches to Acres
  sqInTOacre
  -- Convert Square Inches to Square Centimeter
  sqInTOsqCm
  -- Convert Square Inches to Square Decimeter
  sqInTOsqDm
  -- Convert Square Inches to Square Mile
  sqInTOsqMi
  -- Convert Square Inches to Square Millimeter
  sqInTOsqMm
  -- Convert Square Inches to Square Yards
  sqInTOsqYd
    ) where

sqInTOsqKm :: Floating a => a -> a
sqInTOsqKm x = x^2 / 1550000000

sqInTOsqM :: Floating a => a -> a
sqInTOsqM x = x^2 * 0.00064516

sqInTOsqFt :: Floating a => a -> a
sqInTOsqFt x = x^2 * 0.0069444

sqInTOhec :: Floating a => a -> a
sqInTOhec x = x^2 x 0.000000064516

sqInTOacre :: Floating a => a -> a
sqInTOacre x = x^2 / 6272640

sqInTOsqCm :: Floating a => a -> a
sqInTOsqCm x = x^2 * 6.4516

sqInTOsqDm :: Floating a => a -> a
sqInTOsqDm x = x^2 * 0.064516

sqInTOsqMi :: Floating a => a -> a
sqInTOsqMi x = x^2 / 4014489600

sqInTOsqMm :: Floating a => a -> a
sqInTOsqMm x = x^2 * 645.16

sqInTOsqYd :: Floating a => a -> a
sqInTOsqYd x = x^2 / 1296



