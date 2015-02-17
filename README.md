ldap2zone Cookbook
===========================

Description
-----------

This cookbook installs and configures Ldap2zone to be used with Bind.

Requirements
------------

#### Chef
Tested on 11.12.8 but newer and older version should work just fine.

#### Platform
The following platforms have been tested with this cookbook, meaning that the recipes run on these platforms without error:
- `Ubuntu`
- `Debian`

#### Cookbooks
- `bind` - This cookbook is used to install bind.

Capabilities
------------

Attributes
----------

#### ldap2zone::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['ldap2zone']['params']['ldap']['uri']</tt></td>
    <td>String</td>
    <td>URI of the LDAP server</td>
    <td><tt>ldap://localhost</tt></td>
  </tr>
  <tr>
    <td><tt>['ldap2zone']['params']['ttl']</tt></td>
    <td>Numeric</td>
    <td>Time to live value for a and ptr records</td>
    <td><tt>500</tt></td>
  </tr>
  <tr>
    <td><tt>['ldap2zone']['params']['prefix']</tt></td>
    <td>String</td>
    <td>Prefix for zone definition files</td>
    <td><tt>db.</tt></td>
  </tr>
  <tr>
    <td><tt>['ldap2zone']['params']['allow']['update']</tt></td>
    <td>Array</td>
    <td>Allow Updates from these networks</td>
    <td><tt>[]</tt></td>
  </tr>
  <tr>
    <td><tt>['ldap2zone']['params']['allow']['transfer']</tt></td>
    <td>Array</td>
    <td>Allow Transfer to zones</td>
    <td><tt>[]</tt></td>
  </tr>
  <tr>
    <td><tt>['ldap2zone']['params']['allow']['notify']</tt></td>
    <td>Boolean</td>
    <td>Allow notify to slaves</td>
    <td><tt>false</tt></td>
  </tr>
  <tr>
    <td><tt>['ldap2zone']['cron']['enabled']</tt></td>
    <td>Boolean</td>
    <td>If it is true, it will add a cron entry in order to run Ldap2bind</td>
    <td><tt>true</tt></td>
  </tr>
  <tr>
    <td><tt>['ldap2zone']['cron']['minute']</tt></td>
    <td>String</td>
    <td>Cron minute entry</td>
    <td><tt>*/5</tt></td>
  </tr>
  <tr>
    <td><tt>['ldap2zone']['cron']['hour']</tt></td>
    <td>String</td>
    <td>Cron hour entry</td>
    <td><tt>*</tt></td>
  </tr>
  <tr>
    <td><tt>['ldap2zone']['cron']['day']</tt></td>
    <td>String</td>
    <td>Cron day entry</td>
    <td><tt>*</tt></td>
  </tr>
  <tr>
    <td><tt>['ldap2zone']['cron']['month']</tt></td>
    <td>String</td>
    <td>Cron month entry</td>
    <td><tt>*</tt></td>
  </tr>
  <tr>
    <td><tt>['ldap2zone']['cron']['weekday']</tt></td>
    <td>String</td>
    <td>Cron weekday entry</td>
    <td><tt>*</tt></td>
  </tr>
</table>

For more details, see the `attributes/default.rb` file.

Recipes
-------

### ldap2zone::default
This recipe installs and configures Ldap2zone in the node.

Resources and Providers
-----------------------

There is **none** defined.

Libraries
---------

There is **none** defined.

Usage
-----

Just include `ldap2zone` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[ldap2zone]"
  ]
}
```

Development
-----------

- Source hosted at [GitHub][repo]
- Report issues/Questions/Feature requests on [GitHub Issues][issues]

Contributing
------------

1. Fork the repository on [Github][repo]
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------

Author:: Claudio Cesar Sanchez Tejeda <demonccc@gmail.com>

Copyright:: 2015, Claudio Cesar Sanchez Tejeda

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

[repo]: https://github.com/demonccc/chef-ldap2zone
[issues]: https://github.com/demonccc/chef-ldap2zone/issues
