let globalDefaults = ./Global.dhall

let MaildirStore = ../types/MaildirStore.dhall

let Account = ../types/Account.dhall

let IMAPStore = ../types/IMAPStore.dhall

let Group = ../types/Group.dhall

in  { global = globalDefaults
    , maildirStores = [] : List MaildirStore
    , accounts = [] : List Account
    , imapStores = [] : List IMAPStore
    , groups = [] : List Group
    }
