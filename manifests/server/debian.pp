# debian specific things
class iodine::server::debian inherits iodine::server::base {
  Service['iodined']{
    hasstatus => false,
  }
  file{'/etc/default/iodine':
    content => template('iodine/default.erb'),
    require => Package['iodine'],
    notify  => Service['iodined'],
    owner   => root,
    group   => 0,
    mode    => '0600';
  }
}
