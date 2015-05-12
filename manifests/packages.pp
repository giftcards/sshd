class sshd::packages {
  package { $sshd::params::packages: ensure => installed, }
}
