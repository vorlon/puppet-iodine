class iodine::server::centos {
  file{'/etc/sysconfig/iodine-server':
    content => template('iodine/iodine-server-sysconfig.erb'),
    require => Package['iodine_server'],
    notify  => Service['iodine_server'],
    owner   => root,
    group   => 0,
    mode    => 0600,
  }
}
