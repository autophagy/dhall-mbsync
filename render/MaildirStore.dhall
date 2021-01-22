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
        , Some "Path ${m.path}"
        , Some "MaxSize ${renderSize m.maxSize}"
        , Some "MapInbox ${m.mapInbox}"
        , Some "Flatten ${m.flatten}"
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
