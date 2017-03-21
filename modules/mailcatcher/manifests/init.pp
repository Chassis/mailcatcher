# Mailcatcher extension for Chassis
class mailcatcher {
  package { [ 'g++', 'libsqlite3-dev' ]:
    ensure => installed,
  }

  package { 'mailcatcher':
    ensure   => installed,
    provider => gem,
    require  => [ Package['g++'], Package['libsqlite3-dev'] ],
  }

  file { '/etc/init/mailcatcher.conf':
    content => template('mailcatcher/upstart.conf.erb'),
  }

  service { 'mailcatcher':
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => true,
    require    => File['/etc/init/mailcatcher.conf'],
  }
}
