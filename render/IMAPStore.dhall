let IMAPStore = ../types/IMAPStore.dhall

let renderFileSize = ./FileSize.dhall

let renderDecision = ./Decision.dhall

let renderOptional = ./Optional.dhall

let render = ./Object.dhall

let fields =
      λ(i : IMAPStore) →
        [ Some "IMAPStore ${i.name}"
        , renderOptional "Path" Text Text/show i.path
        , Some "MaxSize ${renderFileSize i.maxSize}"
        , renderOptional "MapInbox" Text Text/show i.mapInbox
        , renderOptional "Flatten" Text Text/show i.flatten
        , renderOptional "Trash" Text Text/show i.trash
        , Some "TrashNewOnly ${renderDecision i.trashNewOnly}"
        , Some "TrashRemoteNew ${renderDecision i.trashRemoteNew}"
        , Some "Account ${i.account}"
        , Some "UseNamespace ${renderDecision i.useNamespace}"
        , renderOptional "PathDelimiter" Text Text/show i.pathDelimiter
        ]

in  λ(i : IMAPStore) → render IMAPStore i fields
