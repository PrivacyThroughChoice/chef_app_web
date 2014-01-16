#
# Cookbook Name:: thunr-web
# Recipe:: default
#
# Copyright (C) 2013 Fraser Scott
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'nginx::default'

template "/etc/nginx/conf.d/unicorn.conf" do
  owner "root"
  group "root"
  mode 0644
  variables(
    :servers => [ 'localhost:3000' ]
  )
  notifies :restart, "service[nginx]"
end
