class { "mailcatcher": }
class { "mailcatcher::php":
	require => Class['sennza::php'],
}