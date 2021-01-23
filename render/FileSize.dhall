let FileSize = ../types/FileSize.dhall

let Prelude = ../Prelude.dhall

in  λ(size : FileSize) →
      merge
        { Bytes = λ(i : Natural) → "${Prelude.Natural.show i}b"
        , KiBytes = λ(i : Natural) → "${Prelude.Natural.show i}k"
        , MeBytes = λ(i : Natural) → "${Prelude.Natural.show i}m"
        }
        size
