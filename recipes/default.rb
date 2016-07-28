#
# Cookbook Name:: cic-stackdriver-agent
# Recipe:: default
#
# Copyright (C) 2016 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

if node['platform_family'] == 'debian'
  include_recipe 'cic-stackdriver-agent::debian'
end

if node['platform_family'] == 'rhel'
  include_recipe 'cic-stackdriver-agent::rhel'
end

package 'stackdriver-agent'

if node['platform_family'] == 'rhel'
  execute 'stackdriver_config' do
    command "/opt/stackdriver/stack-config --api-key #{node['stackdriver_agent']['api_key']}"
  end
end
