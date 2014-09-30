-- test/MataskellSpec.hs
module MataskellSpec (spec) where

import Mataskell (mataskell)
import Test.Hspec
import Test.Hspec.QuickCheck

spec :: Spec
spec = do
    describe "mataskell" $ do
        it "returns the unit value" $ do
            mataskell `shouldBe` ()

        prop "equals the unit vaue" $
            \ x -> mataskell == x
