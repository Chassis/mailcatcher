package { "ruby1.9.3":
	ensure => latest
}
class { "mailcatcher": }
class { "mailcatcher::php":
	require => Class['sennza::php'],
}