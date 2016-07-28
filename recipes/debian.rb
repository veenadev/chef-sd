#
# Cookbook Name:: cic-stackdriver-agent
# Recipe:: debian
#
# Copyright (C) 2016 Tyler Barto
#
# All rights reserved - Do Not Redistribute
#

#Ensure necessary repo list
if node['platform_version'].start_with?('14.04')
  remote_file '/etc/apt/sources.list.d/stackdriver.list' do
    source 'https://repo.stackdriver.com/trusty.list'
  end
end

if node['platform_version'].start_with?('12.04')
  remote_file '/etc/apt/sources.list.d/stackdriver.list' do
    source 'https://repo.stackdriver.com/precise.list'
  end
end

if node['platform_version'].start_with?('10.04')
  remote_file '/etc/apt/sources.list.d/stackdriver.list' do
    source 'https://repo.stackdriver.com/lucid.list'
  end
end

if node['platform_version'].start_with?('8.')
  remote_file '/etc/apt/sources.list.d/stackdriver.list' do
    source 'https://repo.stackdriver.com/jessie.list'
  end
end

if node['platform_version'].start_with?('7.')
  remote_file '/etc/apt/sources.list.d/stackdriver.list' do
    source 'https://repo.stackdriver.com/wheezy.list'
  end
end

if node['platform_version'].start_with?('6.')
  remote_file '/etc/apt/sources.list.d/stackdriver.list' do
    source 'https://repo.stackdriver.com/squeeze.list'
  end
end

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
