#
# Cookbook:: mysql
# Recipe:: default
#
# Copyright:: 2025, The Authors, All Rights Reserved.

execute 'actualizar SO apt-get update' do
	command 'apt-get update'
end	

package 'mysql-server' do
	action :install
end

service 'mysql' do
	action [:enable, :start]
end
