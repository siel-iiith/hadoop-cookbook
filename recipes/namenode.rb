# Namenode format is required for the first time

execute "hadoop-namenode-format" do
	command "service hadoop-namenode format"
end

service "hadoop-namenode" do
	action [:enable, :restart]
end
