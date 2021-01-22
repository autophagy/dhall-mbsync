let Prelude = ../Prelude.dhall

let render
    : ∀(a : Type) → a → (a → List (Optional Text)) → Text
    = λ(a : Type) →
      λ(renderType : a) →
      λ(f : a → List (Optional Text)) →
        Prelude.Text.concatSep
          "\n"
          ( Prelude.List.map
              (Optional Text)
              Text
              (λ(x : Optional Text) → Prelude.Optional.default Text "" x)
              ( Prelude.List.filter
                  (Optional Text)
                  ( λ(o : Optional Text) →
                      Prelude.Bool.not (Prelude.Optional.null Text o)
                  )
                  (f renderType)
              )
          )

in  render
