class sshd::params {
  $Port         = '22'
  $AddressFamily       = 'any'
  $ListenAddress       = '0.0.0.0'
  $SyslogFacility       = 'AUTHPRIV'
  $LoginGraceTime       = '2m'
  $PermitRootLogin     = 'yes'
  $StrictModes       = 'yes'
  $MaxAuthTries       = '6'
  $MaxSessions       = '10'
  $RSAAuthentication     = 'yes'
  $PubkeyAuthentication     = 'yes'
  $AuthorizedKeysFile     = '.ssh/authorized_keys'
  $AuthorizedKeysCommand     = 'none'
  $AuthorizedKeysCommandRunAs   = 'nobody'
  $RhostsRSAAuthentication   = 'no'
  $HostbasedAuthentication   = 'no'
  $IgnoreUserKnownHosts     = 'no'
  $IgnoreRhosts       = 'yes'
  $PasswordAuthentication     = 'yes'
  $PermitEmptyPasswords     = 'no'
  $ChallengeResponseAuthentication  = 'no'
  $KerberosAuthentication     = 'no'
  $KerberosOrLocalPasswd     = 'yes'
  $KerberosTicketCleanup     = 'yes'
  $KerberosUseKuserok     = 'yes'
  $GSSAPIAuthentication     = 'no'
  $GSSAPICleanupCredentials   = 'yes'
  $GSSAPIStrictAcceptorCheck   = 'yes'
  $GSSAPIKeyExchange     = 'no'
  $UsePAM         = 'yes'
  $AcceptEnv       = 'LANG LC_CTYPE LC_NUMERIC LC_TIME LC_COLLATE LC_MONETARY LC_MESSAGES LC_PAPER LC_NAME LC_ADDRESS LC_TELEPHONE LC_MEASUREMENT LC_IDENTIFICATION LC_ALL LANGUAGE XMODIFIERS'
  $AllowAgentForwarding     = 'yes'
  $AllowTcpForwarding     = 'yes'
  $GatewayPorts       = 'no'
  $X11Forwarding       = 'yes'
  $X11DisplayOffset     = '10'
  $X11UseLocalhost     = 'yes'
  $PrintMotd       = 'yes'
  $PrintLastLog       = 'yes'
  $TCPKeepAlive       = 'yes'
  $UseLogin       = 'no'
  $UsePrivilegeSeparation     = 'yes'
  $PermitUserEnvironment     = 'no'
  $Compression       = 'delayed'
  $ClientAliveInterval     = '900'
  $ClientAliveCountMax     = '4'
  $ShowPatchLevel       = 'no'
  $UseDNS         = 'yes'
  $PidFile       = '/var/run/sshd.pid'
  $MaxStartups       = '10'
  $PermitTunnel       = 'no'
  $ChrootDirectory     = 'none'
  $Banner         = '/etc/ssh/ssh_banner'
  $packages       = [ 'openssh-server' ]
  $services       = [ 'sshd' ]
}
