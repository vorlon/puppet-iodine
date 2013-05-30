class iodine::params {
 $server_package = $::operatingsystem ? {
    /RedHat|CentOS/ => 'iodine',
    /Debian|Ubuntu/ => 'iodine',
  }
 
 $server_service = $::operatingsystem ? {
    /RedHat|CentOS/ => 'iodine-server',
    /Debian|Ubuntu/ => 'iodined',
  }
}
