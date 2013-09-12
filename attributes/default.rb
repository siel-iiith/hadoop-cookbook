#
# Hadoop Cookbook Attributes
#

##
## Hadoop user's attributes
##

# Hadoop user and groups
default['hadoop']['mapred_user'] = 'mapred'

default['hadoop']['hdfs_user'] = 'hdfs'

default['hadoop']['group'] = 'hadoop'

##
## Hadoop package attributes
##

default['hadoop']['cluster_id'] = ''

# Hadoop default cluster role
default['hadoop']['role'] = ''

# Hadoop Jobtracker
default['hadoop']['jobtracker'] = ''

# Hadoop Namenode
default['hadoop']['namenode'] = ''

# Hadoop replication factor
default['hdfs_replication'] = 2

# Hadoop Namenode directory
default['hadoop']['namenode_dir'] = '/mnt/dfs/nn'

# Hadoop Datanode directory
default['hadoop']['datanode_dir'] = '/mnt/dfs/dn'

# Hadoop Tasktracker directory
default['hadoop']['tasktracker_local_dir'] = '/mnt/mapred/tt'

# Hadoop Log Directory
default['hadoop']['log_dir'] = '/mnt/log/hadoop'

# Hadoop PID Directory
default['hadoop']['pid_dir'] = '/var/run/hadoop'
