let types = ../types.dhall

let Prelude = ../Prelude.dhall

let renderSyncOperation =
      λ(operations : List types.SyncOperations) →
        Prelude.Text.concatMapSep
          " "
          types.SyncOperations
          ( λ(a : types.SyncOperations) →
              merge
                { Pull = "Pull"
                , Push = "Push"
                , New = "New"
                , ReNew = "ReNew"
                , Delete = "Delete"
                , Flags = "Flags"
                }
                a
          )
          operations

in  λ(sync : types.Sync) →
      merge
        { None = "None"
        , All = "All"
        , Operations = λ(i : List types.SyncOperations) → renderSyncOperation i
        }
        sync
