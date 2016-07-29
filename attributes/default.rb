default['stackdriver_agent']['api_key'] = nil

default['stackdriver_agent']['repo_list_jome'] = 'https://repo.stackdriver.com/'

case node['platform_family']
when 'debian'
  default['stackdriver_agent']['local_repo'] = '/etc/apt/sources.list.d/stackdriver.list'
  if node['platform_version'].start_with?('14.04')
    default['stackdriver_agent']['repo_list'] = 'trusty.list'
  elsif node['platform_version'].start_with?('12.04')
    default['stackdriver_agent']['repo_list'] = 'precise.list'
  elsif node['platform_version'].start_with?('10.04')
    default['stackdriver_agent']['repo_list'] = 'lucid.list'
  elsif node['platform_version'].start_with?('8.')
    default['stackdriver_agent']['repo_list'] = 'jessie.list'
  elsif node['platform_version'].start_with?('7.')
    default['stackdriver_agent']['repo_list'] = 'wheezy.list'
  elsif node['platform_version'].start_with?('6.')
    default['stackdriver_agent']['repo_list'] = 'squeeze.list'
  end
when 'rhel'
  default['stackdriver_agent']['local_repo'] = '/etc/yum.repos.d/stackdriver.repo'
  if node['platform_version'].start_with?('7.')
    default['stackdriver_agent']['repo_list'] = 'stackdriver-el7.repo'
  elsif node['platform_version'].start_with?('6.')
    default['stackdriver_agent']['repo_list'] = 'stackdriver-el6.repo'
  elsif node['platform_version'].start_with?('5.')
    default['stackdriver_agent']['repo_list'] = 'stackdriver-el5.repo'
  end
end

default['stackdriver_agent']['repo_source'] = node['stackdriver_agent']['repo_list_jome'] + node['stackdriver_agent']['repo_list']
