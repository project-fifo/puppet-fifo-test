class fifo_test {
  class { fifo_test::deps: }
  
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
