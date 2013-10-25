service "#{node['hadoop']['datanode']['service']}" do
	action [:enable, :restart]
end
