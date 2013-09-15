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

# Hadoop DFS URI
default['hadoop']['dfs']['uri'] = "hdfs://"

# Hadoop S3 Bucket
default['hadoop']['s3']['bucket'] = ''

# Hadoop replication factor
default['hdfs_replication'] = 2

# Hadoop Namenode directory
default['hadoop']['namenode_dir'] = '/mnt/dfs/nn'

# Hadoop Datanode directory
default['hadoop']['datanode_dir'] = '/mnt/dfs/dn'

# Hadoop Mapred Local directory
default['hadoop']['mapred_local_dir'] = '/mnt/mapred/local'

# Hadoop Mapred System Directory
default['hadoop']['mapred_system_dir'] = '/mnt/mapred/system'

# Hadoop Log Directory
default['hadoop']['log_dir'] = '/mnt/log/hadoop'

# Hadoop PID Directory
default['hadoop']['pid_dir'] = '/var/run/hadoop'
