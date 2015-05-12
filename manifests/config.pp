class sshd::config {
  require(sshd::packages)

  File {  ensure  => file,
    owner => root,
    group => root,
    mode  => '0644',
    }

  file { '/etc/ssh/ssh_banner':
    source  => 'puppet:///modules/sshd/ssh_banner'
  }
  file { '/etc/pam.d/sshd':
    source  => 'puppet:///modules/sshd/sshd',
  }

        file { '/etc/ssh/sshd_config':
                ensure  => file,
                owner   => root,
                group   => root,
                content => template('sshd/sshd_config.erb'),
                mode    => '0600',
                notify  => Service[$sshd::params::services],
        }

  file { '/etc/security/system_operators':
    ensure  => file,
    owner   => root,
    group   => root,
    mode    => '0644',
    content => template('sshd/system_operators.erb'),
  }
}
