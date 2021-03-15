let FileSize = ./FileSize.dhall

let Sync = ./Sync.dhall

let FarNear = ./FarNear.dhall

in  { name : Text
    , far : Text
    , near : Text
    , patterns : List Text
    , maxSize : Optional FileSize
    , maxMessages : Natural
    , expireUnread : Bool
    , sync : Sync
    , create : FarNear
    , remove : FarNear
    , expunge : FarNear
    , syncState : Text
    }
