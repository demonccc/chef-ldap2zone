name             'ldap2zone'
maintainer       'Claudio Cesar Sanchez Tejeda'
maintainer_email 'demonccc@gmail.com'
license          'Apache 2.0'
description      'Installs/Configures ldap2zone'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.3'

depends          'bind'

recipe           'ldap2zone', 'Installs and configures Ldap2zone'

%w{ debian ubuntu }.each do |os|
  supports os
end
