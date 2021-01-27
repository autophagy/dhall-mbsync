let FileSize = ./FileSize.dhall

let Sync = ./Sync.dhall

let MasterSlave = ./MasterSlave.dhall

in  { name : Text
    , master : Text
    , slave : Text
    , patterns : List Text
    , maxSize : Optional FileSize
    , maxMessages : Natural
    , expireUnread : Bool
    , sync : Sync
    , create : MasterSlave
    , remove : MasterSlave
    , expunge : MasterSlave
    , syncState : Text
    }
