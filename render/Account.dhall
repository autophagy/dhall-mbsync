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
        , renderOptional "Host" Text Prelude.Text.show a.host
        , renderOptional "Port" Natural Prelude.Natural.show a.port
        , Some "Timeout ${Prelude.Natural.show a.timeout}"
        , Some "User ${a.user}"
        , renderOptional "Pass" Text Prelude.Text.show a.pass
        , renderOptional "PassCmd" Text Prelude.Text.show a.passCmd
        , renderOptional "Tunnel" Text Prelude.Text.show a.tunnel
        , Some "AuthMechs ${a.authMechs}"
        , Some "SSLType ${renderSSLType a.sslType}"
        , Some
            "SSLVersions ${Prelude.Text.concatMapSep
                             " "
                             SSLVersion
                             renderSSLVersion
                             a.sslVersions} "
        , Some "SystemCertificates ${renderDecision a.systemCertificates}"
        , renderOptional
            "CertificateFile"
            Text
            Prelude.Text.show
            a.certificateFile
        , renderOptional
            "ClientCertificate"
            Text
            Prelude.Text.show
            a.clientCertificate
        , renderOptional "ClientKey" Text Prelude.Text.show a.clientKey
        , renderOptional
            "PipelineDepth"
            Natural
            Prelude.Natural.show
            a.pipelineDepth
        , renderOptional
            "DisableExtensions"
            Text
            Prelude.Text.show
            a.disableExtensions
        ]

in  λ(a : Account) → render Account a fields
