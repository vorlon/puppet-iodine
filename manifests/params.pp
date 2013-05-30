class iodine::params {
 $server_package = $::operatingsystem ? {
    /RedHat|CentOS/ => 'iodine',
    /Debian|Ubuntu/ => 'iodine',
    'OpenWrt'       => 'iodined',
  }
 
 $server_service = $::operatingsystem ? {
    /RedHat|CentOS/ => 'iodine-server',
    /Debian|Ubuntu/ => 'iodined',
    'OpenWrt'       => 'iodined',
  }
 
 $client_package = $::operatingsystem ? {
    /RedHat|CentOS/ => 'iodine',
    /Debian|Ubuntu/ => 'iodine',
    'OpenWrt'       => 'iodine',
  }
 
 $client_service = $::operatingsystem ? {
    /RedHat|CentOS/ => 'iodine-client',
    /Debian|Ubuntu/ => undef,
    'OpenWrt'       => undef,
  }
}
