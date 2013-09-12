directory node['hadoop']['namenode_dir'] do
  owner 'hdfs'
  group 'hadoop'
  mode '0755'
  action :create
  recursive true
  ignore_failure true
end

directory node['hadoop']['datanode_dir'] do
  owner 'hdfs'
  group 'hadoop'
  mode '0755'
  action :create
  recursive true
  ignore_failure true
end

directory node['hadoop']['tasktracker_local_dir'] do
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
