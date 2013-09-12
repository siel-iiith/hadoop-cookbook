include_recipe "hadoop::prepare"

template "/etc/hadoop/mapred-site.xml" do
	source "mapred-site.xml.erb"
	action :create
end

template "/etc/hadoop/core-site.xml" do
	source "core-site.xml.erb"
	action :create
end

template "/etc/hadoop/hdfs-site.xml" do
	source "hdfs-site.xml.erb"
	action :create
end
