let Create = ../types/Create.dhall

in  λ(x : Create) →
      merge
        { None = "None", Master = "Master", Slave = "Slave", Both = "Both" }
        x
