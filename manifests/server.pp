class iodine::server(
  $domain = hiera('iodine_domain'),
  $password = trocla("iodine_${::fqdn}",'plain')
) {
  case $::operatingsystem {
    'debian','ubuntu': { include iodine::server::debian }
    default: { include iodine::server::base }
  }

  if hiera('use_shorewall',false) {
    include shorewall::rules::dns
  }
}
