define fifo_test::data( $svc ) {
  $user  = $svc
  $group = $svc

  group { $group:
    ensure  => present
  }

  user { $user:
        ensure  => present,
        gid     => $group,
        require => Group[$group],
        home    => "/data/${user}",
        shell   => "/bin/false",
        managehome  => true,
  }

  file { "/data/${user}":
    require => User[$user],
    ensure  => 'directory',
    owner  => $user,
    group  => $group,
    mode   => '0644'
  }

  file { "/data/${user}/db":
    require => User[$user],
    ensure  => 'directory',
    owner  => $user,
    group  => $group,
    mode   => '0644'
  }

  file { "/data/${user}/etc":
    require => User[$user],
    ensure  => 'directory',
    owner  => $user,
    group  => $group,
    mode   => '0644'
  }

  file { "/data/${user}/log":
    require => User[$user],
    ensure  => 'directory',
    owner  => $user,
    group  => $group,
    mode   => '0644'
  }
  }
