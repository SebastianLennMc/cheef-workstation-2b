#
# Cookbook:: python
# Recipe:: default
#
# Copyright:: 2025, The Authors, All Rights Reserved.
apt_update 'update_sources' do
  action :update
end

package 'python3' do
  action :install
end

package 'python3-pip' do
  action :install
end