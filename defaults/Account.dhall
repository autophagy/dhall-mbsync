let SSLType = ../types/SSLType.dhall

let SSLVersion = ../types/SSLVersion.dhall

in  { host = None Text
    , port = None Natural
    , timeout = 20
    , pass = None Text
    , passCmd = None Text
    , tunnel = None Text
    , authMechs = "*"
    , sslType = SSLType.STARTTLS
    , sslVersions = [ SSLVersion.TLSv1, SSLVersion.TLSv1_1, SSLVersion.TLSv1_2 ]
    , systemCertificates = True
    , certificateFile = None Text
    , clientCertificate = None Text
    , clientKey = None Text
    , pipelineDepth = None Natural
    , disableExtensions = None Text
    }
