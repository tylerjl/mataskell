-- test/Mataskell/Base64Spec.hs
module Mataskell.Base64Spec (spec) where

import Mataskell.Base64 (encode64, decode64)
import Test.Hspec
import Test.Hspec.QuickCheck

spec :: Spec
spec = do
    describe "Mataskell.Base64" $ do
        context "plaintext decoding" $ do
            it "decodes hex values" $ do
                let hex = "49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d"
                let expected = "SSdtIGtpbGxpbmcgeW91ciBicmFpbiBsaWtlIGEgcG9pc29ub3VzIG11c2hyb29t"

                decode64 hex `shouldBe` expected
