let Group = ../types/Group.dhall

let Prelude = ../Prelude.dhall

let renderChannels
    : List Text → Text
    = λ(channels : List Text) →
        Prelude.Text.concatMapSep
          "\n"
          Text
          (λ(t : Text) → "Channel ${t}")
          channels

in  λ(group : Group) →
      ''
      Group ${group.name}
      ${renderChannels group.channels}
      ''
