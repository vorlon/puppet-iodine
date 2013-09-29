class iodine::server::config inherits iodine::params {
  file{"$::iodine::params:config_file":
    content => template('iodine/iodine-server-sysconfig.erb'),
    owner   => root,
    group   => 0,
    mode    => 0600,
  }

    content => template('iodine/default.erb'),
    owner   => root,
    group   => 0,
    mode    => '0600';
  }

}
