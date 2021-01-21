let types = ../types.dhall

let concatMapSep =
      https://prelude.dhall-lang.org/v20.0.0/Text/concatMapSep.dhall

let renderChannels
    : List Text → Text
    = λ(channels : List Text) →
        concatMapSep "\n" Text (λ(t : Text) → "Channel ${t}") channels

in  λ(group : types.Group) →
      ''
      Group ${group.name}
      ${renderChannels group.channels}
      ''
