let FileSize = ../types/FileSize.dhall

let Sync = ../types/Sync.dhall

let FarNear = ../types/FarNear.dhall

in  { patterns = [] : List Text
    , maxSize = None FileSize
    , maxMessages = 0
    , expireUnread = False
    , sync = Sync.All
    , create = FarNear.None
    , remove = FarNear.None
    , expunge = FarNear.None
    , syncState = "~/.mbsync/"
    }
