# == Class: iodine::server::install
#
class iodine::server::install {
  package { 'iodine_server':
    ensure => installed,
    name   => $iodine::params::server_package,
  }
}
