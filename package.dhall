let coreTypes =
      { Mbsync =
        { Type = ./types/Mbsync.dhall, default = ./defaults/Mbysnc.dhall }
      , Global =
        { Type = ./types/Global.dhall, default = ./defaults/Global.dhall }
      , MaildirStore =
        { Type = ./types/MaildirStore.dhall
        , default = ./defaults/MaildirStore.dhall
        }
      , Account =
        { Type = ./types/Account.dhall, default = ./defaults/Account.dhall }
      , IMAPStore =
        { Type = ./types/IMAPStore.dhall, default = ./defaults/IMAPStore.dhall }
      , Channel =
        { Type = ./types/Channel.dhall, default = ./defaults/Channel.dhall }
      , Group = { Type = ./types/Group.dhall, default = ./defaults/Group.dhall }
      }

let subTypes =
      { FileSize = ./types/FileSize.dhall
      , Subfolders = ./types/Subfolders.dhall
      , SSLType = ./types/SSLType.dhall
      , MasterSlave = ./types/MasterSlave.dhall
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

in  coreTypes ∧ subTypes ∧ renderers
