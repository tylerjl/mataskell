-- benchmark/Bench.hs
module Main (main) where

import Criterion.Main (bgroup, defaultMain)
import qualified MataskellBench

main :: IO ()
main = defaultMain
    [ bgroup "Mataskell" MataskellBench.benchmarks
        ]
