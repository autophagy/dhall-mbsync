let SSLType = ../types/SSLType.dhall

in  λ(sslType : SSLType) →
      merge { None = "None", STARTTLS = "STARTTLS", IMAPS = "IMAPS" } sslType
