-- Example mbsync configuration
let Prelude =
      https://prelude.dhall-lang.org/v20.0.0/package.dhall sha256:21754b84b493b98682e73f64d9d57b18e1ca36a118b81b33d0a243de8455814b

let mbsync =
      https://raw.githubusercontent.com/autophagy/dhall-mbsync/main/package.dhall

-- Example global configuration
let globals = mbsync.Global::{ bufferLimit = mbsync.FileSize.MeBytes 20 }

-- Example Maildir Store
let maildirStore =
      mbsync.MaildirStore::{
      , name = "example-local"
      , path = Some "~/mail/example/"
      , inbox = "~/mail/example/inbox"
      , subFolders = Some mbsync.Subfolders.Verbatim
      }

-- Example IMAP4 Account
let account =
      mbsync.Account::{
      , name = "example"
      , host = Some "mail.provider.net"
      , user = "mail@domain.io"
      , passCmd = Some "cat ~/super-secret-password.txt"
      , sslType = mbsync.SSLType.IMAPS
      , sslVersions = [ mbsync.SSLVersion.TLSv1_2 ]
      }

-- Example IMAP Store
let imapStore =
      mbsync.IMAPStore::{ name = "example-remote", account = "example" }

-- Building a set of channels using a map
let channelNames = [ "inbox", "sent", "deleted", "junk" ]

let channels =
      Prelude.List.map
        Text
        mbsync.Channel.Type
        ( λ(name : Text) →
            mbsync.Channel::{
            , name = "example-${name}"
            , far = ":example-remote:${name}"
            , near = ":example-local:${name}"
            , create = mbsync.FarNear.Both
            , expunge = mbsync.FarNear.Both
            }
        )
        channelNames

-- Example Group
let group =
      mbsync.Group::{
      , name = "example"
      , channels =
          Prelude.List.map
            Text
            Text
            (λ(name : Text) → "example-${name}")
            channelNames
      }

-- Building a general config
let config =
      mbsync.Mbsync::{
      , global = globals
      , maildirStores = [ maildirStore ]
      , accounts = [ account ]
      , imapStores = [ imapStore ]
      , channels
      , groups = [ group ]
      }

in  mbsync.mkMbsync config
