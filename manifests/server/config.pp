# == Class: iodine::server::config
#
class iodine::server::config inherits iodine::params {
  file{$::iodine::params::config_file:
    content => template($::iodine::params::server_template),
    owner   => 'root',
    group   => 'root',
    mode    => '0600',
  }

}
