class fifo_test::config {

  package { 'augeas':
    ensure => installed,
  }

  package { 'ruby-augeas':
    require => [ Package['augeas'], Package['pkg-config'] ],
    ensure   => 'installed',
    provider => 'gem',
  }

  }
