let Size = ./Size.dhall
let Subfolders = ./Subfolders.dhall

in
{ name : Text
, path : Text
, maxSize : Size
, mapInbox : Text
, flatten : Text
, trash : Optional Text
, trashNewOnly : Bool
, trashRemoteNew : Bool
, altMap : Bool
, inbox : Text
, infoDelimiter : Optional Text
, subFolders : Optional Subfolders
}
