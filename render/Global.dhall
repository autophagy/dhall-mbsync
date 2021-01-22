let types = ../types.dhall

let Prelude = ../Prelude.dhall

let renderOptional = ./Optional.dhall

let renderFileSize = ./FileSize.dhall

let renderDecision = ./Decision.dhall

let render = ./Object.dhall

let fields =
      λ(g : types.Global) →
        [ Some "FSync ${renderDecision g.fSync}"
        , renderOptional
            "FieldDelimiter"
            Text
            Prelude.Text.show
            g.fieldDelimiter
        , Some "BufferLimit ${renderFileSize g.bufferLimit}"
        ]

in  λ(g : types.Global) → render types.Global g fields
