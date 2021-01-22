let Prelude = ../Prelude.dhall

let types = ../types.dhall

let renderSize = ./Size.dhall

let renderDecision = ./Decision.dhall

let renderSubfolders = ./Subfolders.dhall

let renderOptional = ./Optional.dhall

let render = ./Object.dhall

let fields =
      λ(m : types.MaildirStore) →
        [ Some "MaildirStore ${m.name}"
        , renderOptional "Path" Text Prelude.Text.show m.path
        , Some "MaxSize ${renderSize m.maxSize}"
        , renderOptional "MapInbox" Text Prelude.Text.show m.mapInbox
        , renderOptional "Flatten" Text Prelude.Text.show m.flatten
        , renderOptional "Trash" Text Prelude.Text.show m.trash
        , Some "TrashNewOnly ${renderDecision m.trashNewOnly}"
        , Some "TrashRemoteNew ${renderDecision m.trashRemoteNew}"
        , Some "AltMap ${renderDecision m.altMap}"
        , Some "Inbox ${m.inbox}"
        , renderOptional "InfoDelimiter" Text Prelude.Text.show m.infoDelimiter
        , renderOptional
            "SubFolders"
            types.Subfolders
            renderSubfolders
            m.subFolders
        ]

in  λ(m : types.MaildirStore) → render types.MaildirStore m fields
