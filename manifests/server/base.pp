class iodine::server::base {
  package {
    'iodine':
      ensure => present,
  }

  service {
    'iodined':
      ensure => running,
      enable => true,
      require => Package['iodine'],
  }
}
