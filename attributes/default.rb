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
default['hadoop']['jobtracker']['address'] = ''

# Hadoop Namenode
default['hadoop']['namenode']['address'] = ''

# Hadoop Jobtracker service name
default['hadoop']['jobtracker']['service'] = 'hadoop-jobtracker'

# Hadoop Tasktracker service name
default['hadoop']['tasktracker']['service'] = 'hadoop-tasktracker'

# Hadoop Default Configuration
default['hadoop']['conf_dir'] = '/etc/hadoop'

# Hadoop DFS URI
default['hadoop']['dfs']['uri'] = 'hdfs://'

# Hadoop S3 Bucket
default['hadoop']['s3']['bucket'] = ''

# Hadoop replication factor
default['hdfs_replication'] = 2

# Hadoop DFS dir
default['hadoop']['dfs_dir'] = '/mnt/dfs'

# Hadoop Namenode directory
default['hadoop']['namenode']['dir'] = '/mnt/dfs/nn'

# Hadoop Namenode service name
default['hadoop']['namenode']['service'] = 'hadoop-namenode'

# Hadoop Datanode directory
default['hadoop']['datanode']['dir'] = '/mnt/dfs/dn'

# Hadoop Datanode service name
default['hadoop']['datanode']['service'] = 'hadoop-datanode'

# Hadoop Mapred Local directory
default['hadoop']['mapred_local_dir'] = '/mnt/mapred/local'

# Hadoop Mapred System Directory
default['hadoop']['mapred_system_dir'] = '/mnt/mapred/system'

# Hadoop Log Directory
default['hadoop']['log_dir'] = '/mnt/log/hadoop'

# Hadoop PID Directory
default['hadoop']['pid_dir'] = '/var/run/hadoop'

# HDFS safemode extension after threshold level is reached
default['hadoop']['safemode_extension'] = 0

# Default number of maximum map tasks to run on a node
default['hadoop']['map_tasks_maximum'] = 2
