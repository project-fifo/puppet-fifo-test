define fifo_test::clone ($repo) {

  fifo_test::data {$repo: svc => $repo}

  $owner = 'root'


  vcsrepo { "/data/code/${repo}":
    ensure   => latest,
    owner    => $owner,
    group    => $owner,
    provider => git,
    require  => [ Package['git'], File['/data/code'] ],
    source   => "http://github.com/project-fifo/${repo}.git",
    revision => 'test',
  }
  }
