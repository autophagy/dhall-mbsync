let types = ../types.dhall

in  λ(x : types.Subfolders) →
      merge
        { Verbatim = "Verbatim", Maildir = "Maildir++", Legacy = "Legacy" }
        x
