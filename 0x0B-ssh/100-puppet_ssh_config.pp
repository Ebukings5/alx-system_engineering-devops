#!/usr/bin/env bash
# make puppet changes to our configuration file

file_line { 'Turn off passwd auth':
	ensure => present,
	line   => 'PasswordAuthentication no',
	path   => '/etc/ssh/ssh_config',
}

file_line { 'Declare identity file':
	ensure => present,
	line   => 'IdentityFile ~/.ssh/school',
	path   => '/etc/ssh/ssh_config',
}
