let FileSize = ./FileSize.dhall

let Subfolders = ./Subfolders.dhall

in  { name : Text
    , path : Optional Text
    , maxSize : FileSize
    , mapInbox : Optional Text
    , flatten : Optional Text
    , trash : Optional Text
    , trashNewOnly : Bool
    , trashRemoteNew : Bool
    , altMap : Bool
    , inbox : Text
    , infoDelimiter : Optional Text
    , subFolders : Optional Subfolders
    }
