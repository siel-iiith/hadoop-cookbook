service "#{node['hadoop']['tasktracker']['service']}" do
	action [:enable, :restart]
end
