#
# Author:: Claudio Cesar Sanchez Tejeda <demonccc@gmail.com>
# Cookbook Name:: ldap2zone
# Recipe:: default
#
# Copyright 2015, Claudio Cesar Sanchez Tejeda
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe "bind"

package "ldap2zone"

directory node['ldap2zone']['params']['bind']['data'] do
  owner node['bind']['user']
  group node['bind']['group']
  recursive true
  mode 0770
end

if ::File.directory?("/etc/default/ldap2zone")
  d = directory "/etc/default/ldap2zone" do
    action :nothing
    recursive true
  end
  d.run_action(:delete) 
end

file "#{node['bind']['sysconfdir']}/named.conf.ldap2zone" do
  owner node['bind']['user']
  group node['bind']['group']
  mode 0640
end

template "/etc/default/ldap2zone" do
  owner node['bind']['user']
  group node['bind']['group']
  mode 0644
  variables( :params => node["ldap2zone"]["params"] )
end

cron "ldap2zone" do
  minute node['ldap2zone']['cron']['minute']
  hour node['ldap2zone']['cron']['hour']
  day node['ldap2zone']['cron']['day']
  month node['ldap2zone']['cron']['month']
  weekday node['ldap2zone']['cron']['weekday']
  user node['bind']['user']
  command "PATH=$PATH:/bin:/sbin:/usr/bin:/usr/sbin /usr/sbin/ldap2bind"
end
