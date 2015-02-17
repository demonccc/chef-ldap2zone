default['bind']['included_files'] = node['bind']['included_files'] + [ 'named.conf.ldap2zone' ]

# Parameters to configure ldap2zone
default['ldap2zone']['params']['ldap']['uri'] = "ldap://localhost"
default['ldap2zone']['params']['bind']['data'] = "/var/cache/bind/ldap2zone"
default['ldap2zone']['params']['ttl'] = "500"
default['ldap2zone']['params']['prefix'] = "db."
default['ldap2zone']['params']['allow']['update'] = []
#default['ldap2zone']['params']['allow']['update'] = [ '192.168.0.1', '192.168.100.1' ]
default['ldap2zone']['params']['allow']['transfer'] = []
#default['ldap2zone']['params']['allow']['transfer'] = [ '192.168.0.1', '192.168.100.1' ]
default['ldap2zone']['params']['allow']['notify'] = false # or true

# Set the cron parameters to check for updates in the LDAP database
default['ldap2zone']['cron']['enabled'] = true
default['ldap2zone']['cron']['minute'] = "*/5"
default['ldap2zone']['cron']['hour'] = "*"
default['ldap2zone']['cron']['day'] = "*"
default['ldap2zone']['cron']['month'] = "*"
default['ldap2zone']['cron']['weekday'] = "*"
