package 'apache' do
	package_name 'apache2'
end

service 'apache2' do
	action [:enable, :start]
end

file '/var/www/index.html' do
	action [:delete]
end

file '/var/www/html/index.html' do
	content '<html> hi </html>'
	owner 'root'
	group 'root'
	mode '0755'
end

execute 'append' do
	command 'echo Hello Titus >> /etc/motd'
	only_if { ::File.exist?('/home/ttony/test')}
end


