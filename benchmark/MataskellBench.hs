-- benchmark/MataskellBench.hs
module MataskellBench (benchmarks) where

import Criterion (Benchmark, bench, nf)
import Mataskell (mataskell)

benchmarks :: [Benchmark]
benchmarks =
    [ bench "mataskell" (nf (const mataskell) ())
        ]
