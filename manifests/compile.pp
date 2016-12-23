define fifo_test::compile ( $svc ) {

  exec { "make_rel_${svc}":
    require => [
                Vcsrepo["/data/code/${svc}"],
                Package['erlang'],
                Package['gmake'],
                Package['zlib'],
                Package['bzip2'],
                ],
    timeout => 1800,
    command => 'make rel',
    cwd     => "/data/code/${svc}",
    path    => ['/opt/local/bin/', '/bin/'],
    environment => ['HOME=/data/code'],
  }
  }
