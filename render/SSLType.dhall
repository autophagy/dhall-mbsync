let types = ../types.dhall

in  λ(sslType : types.SSLType) →
      merge { None = "None", STARTTLS = "STARTTLS", IMAPS = "IMAPS" } sslType
