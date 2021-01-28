let Global = ../types/Global.dhall

let renderOptional = ./Optional.dhall

let renderFileSize = ./FileSize.dhall

let renderDecision = ./Decision.dhall

let render = ./Object.dhall

let fields =
      λ(g : Global) →
        [ Some "FSync ${renderDecision g.fSync}"
        , renderOptional "FieldDelimiter" Text Text/show g.fieldDelimiter
        , Some "BufferLimit ${renderFileSize g.bufferLimit}"
        ]

in  λ(g : Global) → render Global g fields
