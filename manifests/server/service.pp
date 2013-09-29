class iodine::server:services {
  service { 'iodine_server':
    name    => $iodine::params::server_service,
    ensure  => running,
    enable  => true,
  }
}
