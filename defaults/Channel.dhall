let FileSize = ../types/FileSize.dhall

let Sync = ../types/Sync.dhall

let MasterSlave = ../types/MasterSlave.dhall

in  { patterns = [] : List Text
    , maxSize = None FileSize
    , maxMessages = 0
    , expireUnread = False
    , sync = Sync.All
    , create = MasterSlave.None
    , remove = MasterSlave.None
    , expunge = MasterSlave.None
    , syncState = "~/.mbsync/"
    }
