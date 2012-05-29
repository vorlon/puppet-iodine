class iodine::server::shorewall_masq(
  $zone = hiera('iodine_shorewall_zone','net'),
  $interface = hiera('iodine_shorewall_interface','eth0')
) {
  shorewall::interface { 'dns0':
    zone    =>  $zone,
    rfc1918 => true,
    options =>  'routeback,logmartians';
  }

  $nibbles = split($iodine::server::server_ip, '[.]')
  shorewall::masq{'dnsvpn':
    interface => $interface,
    source => "${nibbles[0]}.${nibbles[1]}.${nibbles[2]}.0/24"
  }

}
