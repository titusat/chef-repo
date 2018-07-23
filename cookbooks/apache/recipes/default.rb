#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#

if node['platform_family'] == "rhel"
	package ="hhtpd"
elsef node['platform_family'] == "debian"
	package = "apache2"
end

package 'apache2' do
	package_name 'httpd'
	action :install
end

service 'apache2' do
	service_name 'httpd'
	action [:enable,:start]
end

#include_recipe 'apache::html'


