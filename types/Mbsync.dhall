let Global = ./Global.dhall

let MaildirStore = ./MaildirStore.dhall

let Account = ./Account.dhall

let IMAPStore = ./IMAPStore.dhall

let Channel = ./Channel.dhall

let Group = ./Group.dhall

in  { global : Global
    , maildirStores : List MaildirStore
    , accounts : List Account
    , imapStores : List IMAPStore
    , channels : List Channel
    , groups : List Group
    }
