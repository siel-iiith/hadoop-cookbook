# Namenode format is required for the first time.
# If the namenode directory exists, it won't be formatted

execute "hadoop-namenode-format" do
	command "hadoop --config #{node['hadoop']['conf_dir']} namenode -format"
end

service "#{node['hadoop']['namenode']['service']}" do
	action [:enable, :restart]
end
