include_recipe "hadoop::prepare"

include_recipe "hadoop::config"

include_recipe "hadoop::jobtracker" if node['hadoop']['role'] == 'jobtracker'
include_recipe "hadoop::tasktracker" if node['hadoop']['role'] == 'tasktracker'
include_recipe "hadoop::namenode" if node['hadoop']['role'] == 'namenode'
include_recipe "hadoop::datanode" if node['hadoop']['role'] == 'datanode'
