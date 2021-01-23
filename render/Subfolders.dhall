let Subfolders = ../types/Subfolders.dhall

in  λ(x : Subfolders) →
      merge
        { Verbatim = "Verbatim", Maildir = "Maildir++", Legacy = "Legacy" }
        x
