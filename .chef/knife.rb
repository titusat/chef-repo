# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "titusat"
client_key               "#{current_dir}/titusat.pem"
chef_server_url          "https://chef-workstation.c.chef-developer.internal/organizations/cheftraining"
cookbook_path            ["#{current_dir}/../cookbooks"]