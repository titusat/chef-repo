cookbook_file '/tmp/install' do
  source 'install'
  owner 'rakentitus'
  group 'rakentitus'
  mode '0755'
  action :create
end
