#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "httpd" do
 action :install
end

service "httpd" do
 action [:enable, :start]
end

template "/var/www/html/index2.html" do
 source node["apache"]["source"]
 mode "0644"
end


