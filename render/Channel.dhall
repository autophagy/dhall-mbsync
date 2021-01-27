let Prelude = ../Prelude.dhall

let Channel = ../types/Channel.dhall

let FileSize = ../types/FileSize.dhall

let renderFileSize = ./FileSize.dhall

let renderDecision = ./Decision.dhall

let renderOptional = ./Optional.dhall

let renderSync = ./Sync.dhall

let renderMasterSlave = ./MasterSlave.dhall

let render = ./Object.dhall

let fields =
      λ(c : Channel) →
        [ Some "Channel ${c.name}"
        , Some "Master ${c.master}"
        , Some "Slave ${c.slave}"
        , renderOptional "MaxSize" FileSize renderFileSize c.maxSize
        , Some "MaxMessages ${Prelude.Natural.show c.maxMessages}"
        , Some "ExpireUnread ${renderDecision c.expireUnread}"
        , Some "Sync ${renderSync c.sync}"
        , Some "Create ${renderMasterSlave c.create}"
        , Some "Remove ${renderMasterSlave c.remove}"
        , Some "Expunge ${renderMasterSlave c.expunge}"
        , Some "SyncState ${c.syncState}"
        ]

in  λ(c : Channel) → render Channel c fields
