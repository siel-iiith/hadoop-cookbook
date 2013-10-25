template "#{node['hadoop']['conf_dir']}/mapred-site.xml" do
	source "mapred-site.xml.erb"
	action :create
end

template "#{node['hadoop']['conf_dir']}/core-site.xml" do
	source "core-site.xml.erb"
	variables(
		:location_addr => node['hadoop']['namenode']['address']
		)
	action :create
	only_if { node['hadoop']['dfs']['uri'] == "hdfs://" }
end

template "#{node['hadoop']['conf_dir']}/core-site.xml" do
	source "core-site.xml.erb"
	variables(
		:location_addr => node['hadoop']['s3']['bucket']
		)
	action :create
	only_if { node['hadoop']['dfs']['uri'] == 's3://' }
end

template "#{node['hadoop']['conf_dir']}/hdfs-site.xml" do
	source "hdfs-site.xml.erb"
	action :create
	only_if { node['hadoop']['dfs']['uri'] == 'hdfs://' }
end
