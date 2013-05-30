# debian specific things
class iodine::server::debian {
  file{'/etc/default/iodine':
    content => template('iodine/default.erb'),
    require => Package['iodine_server'],
    notify  => Service['iodine_server'],
    owner   => root,
    group   => 0,
    mode    => '0600';
  }
}
