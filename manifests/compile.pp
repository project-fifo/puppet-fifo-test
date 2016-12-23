class fifo_test::compile ( $svc ) {

  package { 'erlang':
    ensure => installed,
  }

  package { 'gmake':
    ensure => installed,
  }

  package { 'zlib':
    ensure => installed,
  }

  package { 'bzip2':
    ensure => installed,
  }

  exec { "make_rel_${svc}":
    require => [
                Vcsrepo["/data/code/${svc}"],
                Package['erlang'],
                Package['gmake'],
                Package['zlib'],
                Package['bzip2'],
                ],
    command => 'make rel',
    cwd     => "/data/code/${svc}",
    path    => ['/opt/local/bin/', '/bin/'],
    environment => ['HOME=/data/code'],
  }
  }
