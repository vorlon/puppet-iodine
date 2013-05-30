class iodine::server(
  $domain              = $::domain,
  $server_ip           = $::ipaddress,
  $password            = trocla("iodine_${::fqdn}",'plain'),
  $manage_shorewall    = false,
  $shorewall_masq      = true,
  $shorewall_zone      = 'net',
  $shorewall_interface = 'eth0'
) inherits iodine::params {

  package { 'iodine_server':
    name   => $iodine::params::server_package,
    ensure => installed,
  }

  service { 'iodine_server':
    name    => $iodine::params::server_service,
    ensure  => running,
    enable  => true,
    require => Package['iodine_server'],
  }

  if $manage_shorewall {
    include shorewall::rules::dns
    if $shorewall_masq {
      class{'iodine::server::shorewall_masq':
        zone => $shorewall_zone,
        interface => $shorewall_interface
      }
    }
  }
}
