#
# Cookbook Name:: cic-stackdriver-agent
# Recipe:: default
#
# Copyright (C) 2016 Tyler Barto
#
# All rights reserved - Do Not Redistribute
#

remote_file node['stackdriver_agent']['local_repo'] do
  source node['stackdriver_agent']['repo_source']
end

if node['platform_family'] == 'debian'
  include_recipe 'chef-sd::debian'
end

package 'stackdriver-agent'

if node['platform_family'] == 'rhel'
  execute 'stackdriver_config' do
    if node['stackdriver_agent']['api_key']
      command "/opt/stackdriver/stack-config --api-key #{node['stackdriver_agent']['api_key']}"
    else
      command "echo 'No Key Provided'"
    end
  end
end
