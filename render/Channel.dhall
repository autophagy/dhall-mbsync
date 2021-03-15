let Channel = ../types/Channel.dhall

let FileSize = ../types/FileSize.dhall

let renderFileSize = ./FileSize.dhall

let renderDecision = ./Decision.dhall

let renderOptional = ./Optional.dhall

let renderSync = ./Sync.dhall

let renderFarNear = ./FarNear.dhall

let render = ./Object.dhall

let fields =
      λ(c : Channel) →
        [ Some "Channel ${c.name}"
        , Some "Far ${c.far}"
        , Some "Near ${c.near}"
        , renderOptional "MaxSize" FileSize renderFileSize c.maxSize
        , Some "MaxMessages ${Natural/show c.maxMessages}"
        , Some "ExpireUnread ${renderDecision c.expireUnread}"
        , Some "Sync ${renderSync c.sync}"
        , Some "Create ${renderFarNear c.create}"
        , Some "Remove ${renderFarNear c.remove}"
        , Some "Expunge ${renderFarNear c.expunge}"
        , Some "SyncState ${c.syncState}"
        ]

in  λ(c : Channel) → render Channel c fields
