let FileSize = ../types/FileSize.dhall

in  λ(size : FileSize) →
      merge
        { Bytes = λ(i : Natural) → "${Natural/show i}b"
        , KiBytes = λ(i : Natural) → "${Natural/show i}k"
        , MeBytes = λ(i : Natural) → "${Natural/show i}m"
        }
        size
