{ Group = { Type = ./types/Group.dhall, default = ./defaults/Group.dhall }
, FileSize = ./types/FileSize.dhall
, Subfolders = ./types/Subfolders.dhall
, SSLType = ./types/SSLType.dhall
, Create = ./types/Create.dhall
, SSLVersion = ./types/SSLVersion.dhall
, MaildirStore = ./types/MaildirStore.dhall
, SyncOperations = ./types/SyncOperations.dhall
, Sync = ./types/Sync.dhall
, Global = ./types/Global.dhall
, IMAPStore = ./types/IMAPStore.dhall
, Account = ./types/Account.dhall
, Mbsync = { Type = ./types/Mbsync.dhall, default = ./defaults/Mbysnc.dhall }
}
