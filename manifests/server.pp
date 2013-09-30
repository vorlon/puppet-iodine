class iodine::server(
  $domain              = $::domain,
  $server_ip           = $::ipaddress,
  # Either define the password in the class definition,
  # Or use hiera transparent lookups
  $password            = hiera('iodine::password'),

  # For managing shorewall rules
  $manage_shorewall    = false,
  $shorewall_masq      = true,
  $shorewall_zone      = 'net',
  $shorewall_interface = 'eth0'
) inherits iodine::params {

  include '::iodine::server::install'
  include '::iodine::server::config'
  include '::iodine::server::service'

  if $manage_shorewall {
    include shorewall::rules::dns
    if $shorewall_masq {
      class{'iodine::server::shorewall_masq':
        zone => $shorewall_zone,
        interface => $shorewall_interface
      }
    }
  }
  
  # Order classes properly and notify the service if things change
  Class['::iodine::server::install'] -> Class['::iodine::server::config'] ~> Class['::iodine::server::service']

}
