# Mailcatcher extension for Chassis
class mailcatcher::php {
  file { '/etc/php5/conf.d/mailcatcher.ini':
    content => template('mailcatcher/php.ini.erb'),
  }
}