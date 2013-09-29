class iodine::server::install {
  package { 'iodine_server':
    name   => $iodine::params::server_package,
    ensure => installed,
  }
}
