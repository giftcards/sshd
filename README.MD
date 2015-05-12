## Synopsis  
  
Puppet module to setup sshd whitelist, configuration options, and banner.  
  
## Example  
  
Defaults are stored in params.pp.  
Configures pam to allow a whitelist of accounts to connect via ssh. Account list is configured through the module and is located at /etc/security/system_operators.  
Tested PCI compliant 2014.  
  
## Motivation  
  
Required a PCI compliant ssh setup.  
  
## Installation  
  
Tested on CentOS 6.  
Does not require any extra repositories.  
Sets up a defaults sshd_banner, update files/sshd_banner to match your environment.  
  
## API Reference  
  
operators => list of user accounts allowed to use ssh  
  
the following options match their corresponding setting in sshd (see man sshd.conf):  
port  
addressFamily  
listenAddress  
syslogFacility  
loginGraceTime  
permitRootLogin  
strictModes  
maxAuthTries  
maxSessions  
rSAAuthentication  
pubkeyAuthentication  
authorizedKeysFile  
authorizedKeysCommand  
authorizedKeysCommandRunAs  
rhostsRSAAuthentication  
hostbasedAuthentication  
ignoreUserKnownHosts  
ignoreRhosts  
passwordAuthentication  
permitEmptyPasswords  
challengeResponseAuthentication  
kerberosAuthentication  
kerberosOrLocalPasswd  
kerberosTicketCleanup  
kerberosUseKuserok  
gSSAPIAuthentication  
gSSAPICleanupCredentials  
gSSAPIStrictAcceptorCheck  
gSSAPIKeyExchange  
usePAM  
acceptEnv  
allowAgentForwarding  
allowTcpForwarding  
gatewayPorts  
x11Forwarding  
x11DisplayOffset  
x11UseLocalhost  
printMotd  
printLastLog  
TCPKeepAlive  
useLogin  
usePrivilegeSeparation  
permitUserEnvironment  
compression  
clientAliveInterval  
clientAliveCountMax  
showPatchLevel  
useDNS  
pidFile  
maxStartups  
permitTunnel  
chrootDirectory  
banner  
  
## Contributors  
  
Ryan Munz for Giftcards.com - May 2015  
