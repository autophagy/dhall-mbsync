let FileSize = ../types/FileSize.dhall

let Subfolders = ../types/Subfolders.dhall

in  { path = None Text
    , maxSize = FileSize.Bytes 0
    , mapInbox = None Text
    , flatten = None Text
    , trash = None Text
    , trashNewOnly = False
    , trashRemoteNew = False
    , altMap = False
    , inbox = "~/Maildir"
    , infoDelimiter = None Text
    , subFolders = None Subfolders
    }
