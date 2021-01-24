let SSLType = ./SSLType.dhall

let SSLVersion = ./SSLVersion.dhall

in  { name : Text
    , host : Optional Text
    , port : Optional Natural
    , timeout : Natural
    , user : Text
    , pass : Optional Text
    , passCmd : Optional Text
    , tunnel : Optional Text
    , authMechs : Text
    , sslType : SSLType
    , sslVersions : List SSLVersion
    , systemCertificates : Bool
    , certificateFile : Optional Text
    , clientCertificate : Optional Text
    , clientKey : Optional Text
    , pipelineDepth : Optional Natural
    , disableExtensions : Optional Text
    }
