let SyncOperations = ../types/SyncOperations.dhall

let Prelude = ../Prelude.dhall

in  λ(sync : types.Sync) →
      merge
        { None = "None"
        , All = "All"
        , Operations =
            λ(i : List SyncOperations) →
              Prelude.Text.concatMapSep
                " "
                SyncOperations
                ( λ(op : SyncOperations) →
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
