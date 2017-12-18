{-# LANGUAGE TemplateHaskell #-}

module Main where

import Control.Lens.Tutorial hiding (Atom, Point, point, x, _element, _point, _x, _y)
import Control.Lens hiding (element)

main = undefined

data Atom = Atom { _element :: String, _point :: Point } deriving (Show)
data Point = Point { _x :: Double, _y :: Double } deriving (Show)

makeLenses ''Atom
makeLenses ''Point

-- shiftAtomX :: Atom -> Atom
-- shiftAtomX (Atom e (Point x y)) = Atom e (Point (x + 1) y)

shiftAtomX :: Atom -> Atom
shiftAtomX = over (point . x) (+ 1)
