#
# Cookbook:: node-js
# Recipe:: default
#
# Copyright:: 2025, The Authors, All Rights Reserved.

# Update APT cache
apt_update 'update' do
  action :update
end

# Add NodeSource repository for v20.x
apt_repository 'nodesource_20x' do
  uri 'https://deb.nodesource.com/node_20.x'
  distribution node['lsb']['codename'] 
  components ['main']
  key 'https://deb.nodesource.com/gpgkey/nodesource.gpg.key'
  action :add
end

# Update cache again after adding the new repo
apt_update 'post_nodesource_update' do
  action :update
end

# Install nodejs package
package 'nodejs' do
  action :install
end

# Test the installation
execute 'check_node_version' do
  command 'node --version'
  action  :run
end
