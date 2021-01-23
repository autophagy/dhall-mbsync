let FileSize = ./FileSize.dhall

in  { name : Text
    , path : Optional Text
    , maxSize : FileSize
    , mapInbox : Optional Text
    , flatten : Optional Text
    , trash : Optional Text
    , trashNewOnly : Bool
    , trashRemoteNew : Bool
    , account : Text
    , useNamespace : Bool
    , pathDelimiter : Optional Text
    }
