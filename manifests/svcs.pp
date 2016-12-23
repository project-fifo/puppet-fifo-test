define fifo_test::svcs ( $svc ){

  service { "svc:/network/${svc}:default":
    require => [
                Service[ 'svc:/pkgsrc/epmd:default' ],
                Exec[ "make_rel_${svc}" ],
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
