let SSLVersion = ../types/SSLVersion.dhall

in  λ(version : SSLVersion) →
      merge
        { SSLv3 = "SSLv3"
        , TLSv1 = "TLSv1"
        , TLSv1_1 = "TLSv1.1"
        , TLSv1_2 = "TLSv1.2"
        }
        version
