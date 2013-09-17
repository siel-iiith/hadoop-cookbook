# Namenode format is required for the first time

execute "hadoop-namenode-format" do
	command "service hadoop-namenode format"
	ignore_failure true
end

service "hadoop-namenode" do
	action [:enable, :restart]
end
