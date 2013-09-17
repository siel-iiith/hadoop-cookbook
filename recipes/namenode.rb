# Namenode format is required for the first time.
# If the namenode directory exists, it won't be formatted

execute "hadoop-namenode-format" do
	command "service hadoop-namenode format"
	ignore_failure true
	not_if do Dir.exist?(node['hadoop']['namenode_dir']) end
end

service "hadoop-namenode" do
	action [:enable, :restart]
end
