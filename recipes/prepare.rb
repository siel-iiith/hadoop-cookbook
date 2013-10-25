directory node['hadoop']['dfs_dir'] do
  owner 'hdfs'
  group 'hadoop'
  mode '0755'
  action :create
  ignore_failure true
end

directory node['hadoop']['datanode']['dir'] do
  owner 'hdfs'
  group 'hadoop'
  mode '0755'
  action :create
  recursive true
  ignore_failure true
end

directory node['hadoop']['namenode']['dir'] do
  owner 'hdfs'
  group 'hadoop'
  mode '0755'
  action :create
  recursive true
  ignore_failure true
end

directory node['hadoop']['mapred_local_dir'] do
  owner 'mapred'
  group 'hadoop'
  mode '0755'
  action :create
  recursive true
  ignore_failure true
end

directory node['hadoop']['mapred_system_dir'] do
  owner 'mapred'
  group 'hadoop'
  mode '0755'
  action :create
  recursive true
  ignore_failure true
end

directory node['hadoop']['log_dir'] do
  owner 'hadoop'
  group 'hadoop'
  mode '0775'
  action :create
  recursive true
  ignore_failure true
end

directory node['hadoop']['log_dir'] do
  owner 'hadoop'
  group 'hadoop'
  mode '0775'
  action :create
  recursive true
  ignore_failure true
end

directory node['hadoop']['pid_dir'] do
  owner 'hadoop'
  group 'hadoop'
  mode '0775'
  action :create
  recursive true
  ignore_failure true
end
