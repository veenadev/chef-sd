#
# Cookbook Name:: cic-stackdriver-agent
# Recipe:: debian
#
# Copyright (C) 2016 Tyler Barto
#
# All rights reserved - Do Not Redistribute
#

#Ensure Apt Key for stackdriver list
execute 'stackdriver_apt_key' do
  command 'curl --silent https://app.stackdriver.com/RPM-GPG-KEY-stackdriver |apt-key add -'
end

#Update
apt_update 'update for stackdriver' do
  action :update
end

#Preset API key in debconf
execute 'stackdriver_api_in_debconf' do
  command "echo \"stackdriver-agent stackdriver-agent/apikey string #{node['stackdriver_agent']['api_key']}\" | debconf-set-selections"
end
