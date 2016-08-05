module Formula.Area (
    -- Convert Square Inches to Square Kilometers
    sqInTOsqKm
    ) where


sqInTOsqKm :: Floating a => a -> a
sqInTOsqKm x = (x ^ 2) / 1550000000