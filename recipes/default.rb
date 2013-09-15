include_recipe "hadoop::prepare"

template "/etc/hadoop/mapred-site.xml" do
	source "mapred-site.xml.erb"
	action :create
end

template "/etc/hadoop/core-site.xml" do
	source "core-site.xml.erb"
	variables (
		:location_addr => node['hadoop']['namenode']
		)
	action :create
	only_if { node['hadoop']['dfs']['uri'] == "hdfs://" }
end

template "/etc/hadoop/core-site.xml" do
	source "core-site.xml.erb"
	variables (
		:location_addr => node['hadoop']['s3']['bucket']
		)
	action :create
	only_if { node['hadoop']['dfs']['uri'] == 's3://' }
end

template "/etc/hadoop/hdfs-site.xml" do
	source "hdfs-site.xml.erb"
	action :create
	only_if { node['hadoop']['dfs']['uri'] == 'hdfs://' }
end
