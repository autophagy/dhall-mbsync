let FileSize = ../types/FileSize.dhall

in  { path = None Text
    , maxSize = FileSize.Bytes 0
    , mapInbox = None Text
    , flatten = None Text
    , trash = None Text
    , trashNewOnly = False
    , trashRemoteNew = False
    , useNamespace = True
    , pathDelimiter = None Text
    }
