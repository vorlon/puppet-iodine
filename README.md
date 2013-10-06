About
------
[iodine](http://code.kryo.se/iodine/) is an IP over DNS tunnel. This module makes it easy to install and configure them.

[![Build Status](https://travis-ci.org/solarkennedy/puppet-iodine.png)](https://travis-ci.org/solarkennedy/puppet-iodine)

Installation
------------
    puppet module install KyleAnderson/iodine

Examples
-------

#### Minimal Example
You can either use hiera for the password (iodine::password) or specify it right in the manifest:
```puppet
class { '::iodine::server': password => 'test_password' }
```
#### More Advanced
By default it will use your $::domain and $::ipaddress, but you will probably want to override them.
```puppet
class { '::iodine::server': domain => 'dns.xkyle.com', serverip => '192.168.0.1' }
```

#### Client Connects
```puppet
# Minimal example. Uses your $domain as the tunneling top domain, which probably wont work
class { '::iodine::client': }
# User the default nameservers in resolv.conf
class { '::iodine::client': domain => 'dns.xkyle.com' }
# Use a particular nameserver
class { '::iodine::client': domain => 'dns.xkyle.com', nameserver => '8.8.8.8' }
```

License
-------
Apache License, Version 2.0

Support
-------
https://github.com/solarkennedy/puppet-iodine
