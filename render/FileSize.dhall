let types = ../types.dhall

let Prelude = ../Prelude.dhall

in  λ(size : types.FileSize) →
      merge
        { Bytes = λ(i : Natural) → "${Prelude.Natural.show i}b"
        , KiBytes = λ(i : Natural) → "${Prelude.Natural.show i}k"
        , MeBytes = λ(i : Natural) → "${Prelude.Natural.show i}m"
        }
        size
