class fifo_test {
  package { 'git':
    ensure => installed,
  }

  file { '/data' :
    ensure  => directory,
    group   => root,
    owner   => root,
    mode    => '0644',
  }

  file { '/data/code' :
    require => [ File['/data'] ],
    ensure  => directory,
    group   => root,
    owner   => root,
    mode    => '0644',
  }

  }
