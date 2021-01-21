let types = ../types.dhall

in  λ(x : types.Create) →
      merge
        { None = "None", Master = "Master", Slave = "Slave", Both = "Both" }
        x
