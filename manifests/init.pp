class sshd (

  $port         = $sshd::params::Port,
  $addressFamily       = $sshd::params::AddressFamily,
  $listenAddress       = $sshd::params::ListenAddress,
  $syslogFacility     = $sshd::params::SyslogFacility,
  $loginGraceTime     = $sshd::params::LoginGraceTime,
  $permitRootLogin     = $sshd::params::PermitRootLogin,
  $strictModes       = $sshd::params::StrictModes,
  $maxAuthTries       = $sshd::params::MaxAuthTries,
  $maxSessions       = $sshd::params::MaxSessions,
  $rSAAuthentication     = $sshd::params::RSAAuthentication,
  $pubkeyAuthentication     = $sshd::params::PubkeyAuthentication,
  $authorizedKeysFile     = $sshd::params::AuthorizedKeysFile,
  $authorizedKeysCommand     = $sshd::params::AuthorizedKeysCommand,
  $authorizedKeysCommandRunAs   = $sshd::params::AuthorizedKeysCommandRunAs,
  $rhostsRSAAuthentication   = $sshd::params::RhostsRSAAuthentication,
  $hostbasedAuthentication   = $sshd::params::HostbasedAuthentication,
  $ignoreUserKnownHosts     = $sshd::params::IgnoreUserKnownHosts,
  $ignoreRhosts       = $sshd::params::IgnoreRhosts,
  $passwordAuthentication   = $sshd::params::PasswordAuthentication,
  $permitEmptyPasswords     = $sshd::params::PermitEmptyPasswords,
  $challengeResponseAuthentication   = $sshd::params::ChallengeResponseAuthentication,
  $kerberosAuthentication   = $sshd::params::KerberosAuthentication,
  $kerberosOrLocalPasswd     = $sshd::params::KerberosOrLocalPasswd,
  $kerberosTicketCleanup     = $sshd::params::KerberosTicketCleanup,
  $kerberosUseKuserok     = $sshd::params::KerberosUseKuserok,
  $gSSAPIAuthentication     = $sshd::params::GSSAPIAuthentication,
  $gSSAPICleanupCredentials   = $sshd::params::GSSAPICleanupCredentials,
  $gSSAPIStrictAcceptorCheck   = $sshd::params::GSSAPIStrictAcceptorCheck,
  $gSSAPIKeyExchange     = $sshd::params::GSSAPIKeyExchange,
  $usePAM       = $sshd::params::UsePAM,
  $acceptEnv       = $sshd::params::AcceptEnv,
  $allowAgentForwarding     = $sshd::params::AllowAgentForwarding,
  $allowTcpForwarding     = $sshd::params::AllowTcpForwarding,
  $gatewayPorts       = $sshd::params::GatewayPorts,
  $x11Forwarding       = $sshd::params::X11Forwarding,
  $x11DisplayOffset     = $sshd::params::X11DisplayOffset,
  $x11UseLocalhost     = $sshd::params::X11UseLocalhost,
  $printMotd       = $sshd::params::PrintMotd,
  $printLastLog       = $sshd::params::PrintLastLog,
  $TCPKeepAlive       = $sshd::params::TCPKeepAlive,
  $useLogin       = $sshd::params::UseLogin,
  $usePrivilegeSeparation   = $sshd::params::UsePrivilegeSeparation,
  $permitUserEnvironment     = $sshd::params::PermitUserEnvironment,
  $compression       = $sshd::params::Compression,
  $clientAliveInterval     = $sshd::params::ClientAliveInterval,
  $clientAliveCountMax     = $sshd::params::ClientAliveCountMax,
  $showPatchLevel     = $sshd::params::ShowPatchLevel,
  $useDNS       = $sshd::params::UseDNS,
  $pidFile       = $sshd::params::PidFile,
  $maxStartups       = $sshd::params::MaxStartups,
  $permitTunnel       = $sshd::params::PermitTunnel,
  $chrootDirectory     = $sshd::params::ChrootDirectory,
  $banner       = $sshd::params::Banner,
  $operators,

) inherits sshd::params {

  include sshd::params
  include sshd::packages
  include sshd::config
  include sshd::services

}
