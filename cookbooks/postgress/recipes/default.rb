#
# Cookbook:: postgress
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
package 'postgresql-server' do
	notifies :run, 'execute[postgresql-server init]'
end

execute 'postgresql-server init' do
	command 'postgresql-setup initdb'
	action:nothing
end

service 'postgresql' do
	action[:enable,:start]
end
