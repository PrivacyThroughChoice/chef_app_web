#
# Cookbook Name:: chef_app_web
# Recipe:: default
#
# Copyright (C) 2014 Privacy Through Choice
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'nginx::default'

%w[ default.conf example_ssl.conf ].each do |file|
  file "/etc/nginx/conf.d/#{file}" do
    action :delete
  end
end

template "/etc/nginx/sites-available/ptc-rails" do
  owner "root"
  group "root"
  mode 0644
  variables(
    :servers => [ 'localhost:8080' ]
  )
  notifies :restart, "service[nginx]"
end

nginx_site 'ptc-rails' do
  enable true
end
