let MasterSlave = ../types/MasterSlave.dhall

in  λ(x : MasterSlave) →
      merge
        { None = "None", Master = "Master", Slave = "Slave", Both = "Both" }
        x
