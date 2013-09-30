class iodine::server::service {
  service { 'iodine_server':
    name    => $iodine::params::server_service,
    ensure  => running,
    enable  => true,
  }
}
