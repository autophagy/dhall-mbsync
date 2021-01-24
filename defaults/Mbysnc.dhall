let MaildirStore = ../types/MaildirStore.dhall

let Account = ../types/Account.dhall

let IMAPStore = ../types/IMAPStore.dhall

let Group = ../types/Group.dhall

in  { maildirStores = [] : List MaildirStore
    , accounts = [] : List Account
    , imapStores = [] : List IMAPStore
    , groups = [] : List Group
    }
