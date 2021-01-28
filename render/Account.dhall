let Prelude = ../Prelude.dhall

let Account = ../types/Account.dhall

let SSLVersion = ../types/SSLVersion.dhall

let renderDecision = ./Decision.dhall

let renderOptional = ./Optional.dhall

let renderSSLType = ./SSLType.dhall

let renderSSLVersion = ./SSLVersion.dhall

let render = ./Object.dhall

let fields =
      λ(a : Account) →
        [ Some "IMAPAccount ${a.name}"
        , renderOptional "Host" Text Text/show a.host
        , renderOptional "Port" Natural Natural/show a.port
        , Some "Timeout ${Natural/show a.timeout}"
        , Some "User ${a.user}"
        , renderOptional "Pass" Text Text/show a.pass
        , renderOptional "PassCmd" Text Text/show a.passCmd
        , renderOptional "Tunnel" Text Text/show a.tunnel
        , Some "AuthMechs ${a.authMechs}"
        , Some "SSLType ${renderSSLType a.sslType}"
        , Some
            "SSLVersions ${Prelude.Text.concatMapSep
                             " "
                             SSLVersion
                             renderSSLVersion
                             a.sslVersions} "
        , Some "SystemCertificates ${renderDecision a.systemCertificates}"
        , renderOptional "CertificateFile" Text Text/show a.certificateFile
        , renderOptional "ClientCertificate" Text Text/show a.clientCertificate
        , renderOptional "ClientKey" Text Text/show a.clientKey
        , renderOptional "PipelineDepth" Natural Natural/show a.pipelineDepth
        , renderOptional "DisableExtensions" Text Text/show a.disableExtensions
        ]

in  λ(a : Account) → render Account a fields
