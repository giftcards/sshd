class sshd::services {
  require(sshd::packages)
  require(sshd::config)

  service { $sshd::params::services:
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => true,
    require    => Package[$sshd::params::packages],
  }
}
