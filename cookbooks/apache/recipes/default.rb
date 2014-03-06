#
# Cookbook Name:: apache
# Recipe:: default
# Location cookbooks/apache/recipes/default.rb
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# ~/Documnets/Development/Chef/chef-repo/cookbooks/recipes/default.rb
# Configuration Files - need to refactor move variables and selection based on os to 
# cookbooks/apache/attributes.rb

  
# install apache using the apache resource
package node["package_name"] do
  action :install
end

# start apache service
# enable makes sure it is running on reboot
# make sure the service starts on reboot
service node["service_name"] do
  action [ :start , :enable ]
end
  
# write our home page
#cookbook_file "#{document_root}/index.html" do
#  source "index.html"
#  mode "0644"
#end

template "#{node["document_root"]}/index.html" do
  source "index.html.erb"
  mode "0644"
end

 
