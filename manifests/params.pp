# == Class: iodine::params
#
#  Handles OS specific variations
#
class iodine::params {
  case $::osfamily {

    'RedHat': {
      $server_package = 'iodine'
      $server_service = 'iodine-server'
      $client_package = 'iodine'
      $client_service = 'iodine'
      $config_file = '/etc/sysconfig/iodine'
      $server_template = 'iodine/config_redhat.erb'
    }
    'Debian': {
      $server_package = 'iodine'
      $server_service = 'iodine-server'
      $client_package = 'iodine'
      $client_service = 'iodine'
      $config_file = '/etc/sysconfig/iodine'
      $server_template = 'iodine/config_debian.erb'
    }
    default: {
      fail("I don't know how to manage iodine on ${::osfamily}")
    }

  }
}
