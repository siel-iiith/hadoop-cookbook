service "#{node['hadoop']['jobtracker']['service']}" do
	action [:enable, :restart]
end
