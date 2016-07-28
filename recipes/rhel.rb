#
# Cookbook Name:: cic-stackdriver-agent
# Recipe:: debian
#
# Copyright (C) 2016 Tyler Barto
#
# All rights reserved - Do Not Redistribute
#


if node['platform_version'].start_with?('7.')
  remote_file '/etc/yum.repos.d/stackdriver.repo' do
    source 'https://repo.stackdriver.com/stackdriver-el7.repo'
  end
end

if node['platform_version'].start_with?('6.')
  remote_file '/etc/yum.repos.d/stackdriver.repo' do
    source 'https://repo.stackdriver.com/stackdriver-el6.repo'
  end
end

if node['platform_version'].start_with?('5.')
  remote_file '/etc/yum.repos.d/stackdriver.repo' do
    source 'https://repo.stackdriver.com/stackdriver-el5.repo'
  end
end
