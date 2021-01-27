let Prelude = ../Prelude.dhall

let concat = Prelude.Text.concatMapSep

let Mbsync = ../types/Mbsync.dhall

let Maildir = ../types/MaildirStore.dhall

let Account = ../types/Account.dhall

let IMAPStore = ../types/IMAPStore.dhall

let Group = ../types/Group.dhall

let renderGlobal = ./Global.dhall

let renderMaildir = ./MaildirStore.dhall

let renderAccount = ./Account.dhall

let renderImap = ./IMAPStore.dhall

let renderGroup = ./Group.dhall

in  λ(m : Mbsync) →
      ''
      ###################
      # Global Settings #
      ###################

      ${renderGlobal m.global}

      ##################
      # Maildir Stores #
      ##################

      ${concat "\n\n" Maildir renderMaildir m.maildirStores}

      ##################
      # IMAP4 Accounts #
      ##################

      ${concat "\n\n" Account renderAccount m.accounts}

      ###############
      # IMAP Stores #
      ###############

      ${concat "\n\n" IMAPStore renderImap m.imapStores}

      ##########
      # Groups #
      ##########

      ${concat "\n\n" Group renderGroup m.groups}

      ''
