class fifo_test::deps {
  package { 'pkg-config': ensure => installed }
  package { 'coreutils':  ensure => installed }
  package { 'sudo':       ensure => installed }
  package { 'grep':       ensure => installed }
  }
