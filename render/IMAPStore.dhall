let Prelude = ../Prelude.dhall

let types = ../types.dhall

let renderFileSize = ./FileSize.dhall

let renderDecision = ./Decision.dhall

let renderOptional = ./Optional.dhall

let render = ./Object.dhall

let fields =
      λ(i : types.IMAPStore) →
        [ Some "MaildirStore ${i.name}"
        , renderOptional "Path" Text Prelude.Text.show i.path
        , Some "MaxSize ${renderFileSize i.maxSize}"
        , renderOptional "MapInbox" Text Prelude.Text.show i.mapInbox
        , renderOptional "Flatten" Text Prelude.Text.show i.flatten
        , renderOptional "Trash" Text Prelude.Text.show i.trash
        , Some "TrashNewOnly ${renderDecision i.trashNewOnly}"
        , Some "TrashRemoteNew ${renderDecision i.trashRemoteNew}"
        , Some "Account ${i.account}"
        , Some "UseNamespace ${renderDecision i.useNamespace}"
        , renderOptional "PathDelimiter" Text Prelude.Text.show i.pathDelimiter
        ]

in  λ(i : types.IMAPStore) → render types.IMAPStore i fields
