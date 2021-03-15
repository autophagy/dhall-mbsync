let FarNear = ../types/FarNear.dhall

in  λ(x : FarNear) →
      merge
        { None = "None", Far = "Far", Near = "Near", Both = "Both" }
        x
