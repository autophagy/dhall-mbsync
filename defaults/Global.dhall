let FileSize = ../types/FileSize.dhall

in  { fSync = True
    , fieldDelimiter = None Text
    , bufferLimit = FileSize.MeBytes 10
    }
