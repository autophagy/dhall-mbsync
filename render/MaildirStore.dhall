let MaildirStore = ../types/MaildirStore.dhall

let Subfolders = ../types/Subfolders.dhall

let renderFileSize = ./FileSize.dhall

let renderDecision = ./Decision.dhall

let renderSubfolders = ./Subfolders.dhall

let renderOptional = ./Optional.dhall

let render = ./Object.dhall

let fields =
      λ(m : MaildirStore) →
        [ Some "MaildirStore ${m.name}"
        , renderOptional "Path" Text Text/show m.path
        , Some "MaxSize ${renderFileSize m.maxSize}"
        , renderOptional "MapInbox" Text Text/show m.mapInbox
        , renderOptional "Flatten" Text Text/show m.flatten
        , renderOptional "Trash" Text Text/show m.trash
        , Some "TrashNewOnly ${renderDecision m.trashNewOnly}"
        , Some "TrashRemoteNew ${renderDecision m.trashRemoteNew}"
        , Some "AltMap ${renderDecision m.altMap}"
        , Some "Inbox ${m.inbox}"
        , renderOptional "InfoDelimiter" Text Text/show m.infoDelimiter
        , renderOptional "SubFolders" Subfolders renderSubfolders m.subFolders
        ]

in  λ(m : MaildirStore) → render MaildirStore m fields
