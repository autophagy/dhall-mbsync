let MaildirStore = ./MaildirStore.dhall

let Account = ./Account.dhall

let IMAPStore = ./IMAPStore.dhall

let Group = ./Group.dhall

let Mbsync =  { maildirStores : List MaildirStore
   , accounts : List Account
   , imapStores : List IMAPStore
   , groups : List Group.Type
}

let defaults = { maildirStores = [] : List MaildirStore
              , accounts = [] : List Account
              , imapStores = [] : List IMAPStore
              , groups = [] : List Group.Type
}

in { Type = Mbsync, default = defaults}
