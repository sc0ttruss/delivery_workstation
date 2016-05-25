# See http://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "delivery"
client_key               "~/chef-kits/chef/delivery.pem"
validation_client_name   "myorg-validator"
validation_key           "~/chef-kits/chef/myorg-validator.pem"
chef_server_url          "https://chef.myorg.chefdemo.net/organizations/myorg"
knife[:supermarket_site] = 'https://supermarket.myorg.chefdemo.net'
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
