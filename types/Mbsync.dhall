let MaildirStore = ./MaildirStore.dhall

let Account = ./Account.dhall

let IMAPStore = ./IMAPStore.dhall

let Group = ./Group.dhall

in  { maildirStores : List MaildirStore
    , accounts : List Account
    , imapStores : List IMAPStore
    , groups : List Group
    }
