class fifo_test::svcs ( $svc ){

  service { 'svc:/pkgsrc/epmd:default':
    require  => [ Package[ 'erlang' ] ],
    enable   => true,
    ensure   => running,
  }
  service { "svc:/network/${svc}:default":
    require => [
                Service[ 'svc:/pkgsrc/epmd:default' ],
                Exec[ "make_rel_${svcs}" ],
                File[ "/opt/local/fifo-${svc}/share" ],
                File[ "/opt/local/fifo-${svc}/bin" ],
                File[ "/opt/local/fifo-${svc}/lib" ],
                Augeas[ "howl.conf" ],
                ],
    manifest => "/opt/local/fifo-${svc}/share/${svc}.xml",
    enable   => true,
    ensure   => running,
  }
}