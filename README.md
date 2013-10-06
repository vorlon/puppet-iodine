About
------
[iodine](http://code.kryo.se/iodine/) is an IP over DNS tunnel. This module makes it easy to install and configure them.
[![Build Status](https://travis-ci.org/solarkennedy/puppet-iodine.png)](https://travis-ci.org/solarkennedy/puppet-iodine)


Installation
------------
    puppet module install KyleAnderson/iodine

Examples
-------
* You can either use hiera for the password (iodine::password) or specify it right in the manifest:
```puppet
class { '::iodine::server': password => 'test_password' }
```
### More Advanced

```puppet
class { '::iodine::server': domain => 'dns.xkyle.com', serverip => '192.168.0.1' }
```

License
-------
Apache License, Version 2.0

Support
-------
https://github.com/solarkennedy/puppet-iodine
