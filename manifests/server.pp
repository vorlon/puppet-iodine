class iodine::server(
  $domain = hiera('iodine_domain'),
  $server_ip = hiera('iodine_server_ip'),
  $password = trocla("iodine_${::fqdn}",'plain')
) {
  case $::operatingsystem {
    'debian','ubuntu': { include iodine::server::debian }
    default: { include iodine::server::base }
  }

  if hiera('use_shorewall',false) {
    include shorewall::rules::dns
    if hiera('iodine_shorewall_masq',true) {
      include shorewall::server::shorewall_masq
    }
  }
}
