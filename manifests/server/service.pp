# == Class: iodine::server::service
#
class iodine::server::service {
  service { 'iodine_server':
    ensure => running,
    name   => $iodine::params::server_service,
    enable => true,
  }
}
