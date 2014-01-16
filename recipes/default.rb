#
# Cookbook Name:: thunr-web
# Recipe:: default
#
# Copyright (C) 2013 Fraser Scott
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'nginx::default'

template "/etc/nginx/sites-available/thunr-rails" do
  owner "root"
  group "root"
  mode 0644
  variables(
    :servers => [ 'localhost:8080' ]
  )
  notifies :restart, "service[nginx]"
end

nginx_site 'thunr-rails' do
  enable true
end
