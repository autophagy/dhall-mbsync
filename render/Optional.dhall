let renderOptional
    : Text → ∀(a : Type) → (a → Text) → Optional a → Optional Text
    = λ(prefix : Text) →
      λ(a : Type) →
      λ(f : a → Text) →
      λ(o : Optional a) →
        merge { Some = λ(t : a) → Some "${prefix} ${f t}", None = None Text } o

in  renderOptional
