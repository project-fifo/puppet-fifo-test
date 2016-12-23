class fifo_test::deps {
  package { 'git':        ensure => installed }
  package { 'pkg-config': ensure => installed }
  package { 'coreutils':  ensure => installed }
  package { 'sudo':       ensure => installed }
  package { 'grep':       ensure => installed }
  package { 'erlang':     ensure => installed }
  package { 'gmake':      ensure => installed }
  package { 'zlib':       ensure => installed }
  package { 'bzip2':      ensure => installed }
  }
