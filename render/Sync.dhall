let types = ../types.dhall

let Prelude = ../Prelude.dhall

in  λ(sync : types.Sync) →
      merge
        { None = "None"
        , All = "All"
        , Operations =
            λ(i : List types.SyncOperations) →
              Prelude.Text.concatMapSep
                " "
                types.SyncOperations
                ( λ(op : types.SyncOperations) →
                    merge
                      { Pull = "Pull"
                      , Push = "Push"
                      , New = "New"
                      , ReNew = "ReNew"
                      , Delete = "Delete"
                      , Flags = "Flags"
                      }
                      op
                )
                i
        }
        sync
