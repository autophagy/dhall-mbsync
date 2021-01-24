let types =
      { Mbsync =
        { Type = ./types/Mbsync.dhall, default = ./defaults/Mbysnc.dhall }
      , MaildirStore = ./types/MaildirStore.dhall
      , Account = ./types/Account.dhall
      , IMAPStore = ./types/IMAPStore.dhall
      , Group = { Type = ./types/Group.dhall, default = ./defaults/Group.dhall }
      , FileSize = ./types/FileSize.dhall
      , Subfolders = ./types/Subfolders.dhall
      , SSLType = ./types/SSLType.dhall
      , Create = ./types/Create.dhall
      , SSLVersion = ./types/SSLVersion.dhall
      , SyncOperations = ./types/SyncOperations.dhall
      , Sync = ./types/Sync.dhall
      }

let renderers =
      { mkMbsync = ./render/Mbsync.dhall
      , mkMaildirStore = ./render/MaildirStore.dhall
      , mkAccount = ./render/Account.dhall
      , mkIMAPStore = ./render/IMAPStore.dhall
      , mkGroup = ./render/Group.dhall
      }

in  types ∧ renderers
