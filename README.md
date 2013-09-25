hadoop Cookbook
===============

Installs and Configures Hadoop on Ubuntu with hadoop installed(using official .deb package).

Requirements
------------

This cookbook is part of HadoopStack. In order to skip the time required in installation of Hadoop on Instances, we decided to use an image with Hadoop pre-installed. This cookbook currently supports Ubuntu with Hadoop pre-installed from official .deb package.

http://archive.apache.org/dist/hadoop/core/hadoop-1.2.1/

Attributes
----------
#### hadoop::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['hadoop']['mapred_user']</tt></td>
    <td>String</td>
    <td>User on behalf of whom job/tasktracker daemons will run</td>
    <td><tt>mapred</tt></td>
  </tr>
  <tr>
    <td><tt>['hadoop']['hdfs_user']</tt></td>
    <td>String</td>
    <td>User on behalf of whom name/datanodes daemons will run</td>
    <td><tt>hdfs</tt></td>
  </tr>
  <tr>
    <td><tt>['hadoop']['group']</tt></td>
    <td>String</td>
    <td>A common system group for hadoop daemons</td>
    <td><tt>hadoop</tt></td>
  </tr>
  <tr>
    <td><tt>['hadoop']['jobtracker']</tt></td>
    <td>String</td>
    <td>IP of jobtracker</td>
    <td><tt></tt></td>
  </tr>
  <tr>
    <td><tt>['hadoop']['namenode']</tt></td>
    <td>String</td>
    <td>IP of namenode</td>
    <td><tt></tt></td>
  </tr>
  <tr>
    <td><tt>['hdfs_replication']</tt></td>
    <td>Integer</td>
    <td>Replication Factor</td>
    <td><tt>2</tt></td>
  </tr>
  <tr>
    <td><tt>['hadoop']['dfs_dir']</tt></td>
    <td>String</td>
    <td>Parent directory of Namenode/Datanode dir</td>
    <td><tt>/mnt/dfs</tt></td>
  </tr>
  <tr>
    <td><tt>['hadoop']['namenode_dir']</tt></td>
    <td>String</td>
    <td>Namenode Directory</td>
    <td><tt>/mnt/dfs/nn</tt></td>
  </tr>
  <tr>
    <td><tt>['hadoop']['datanode_dir']</tt></td>
    <td>String</td>
    <td>Datanode Directory</td>
    <td><tt>/mnt/dfs/dn</tt></td>
  </tr>
  <tr>
    <td><tt>['hadoop']['mapred_local_dir']</tt></td>
    <td>String</td>
    <td>Mapred local directory</td>
    <td><tt>/mnt/mapred/local</tt></td>
  </tr>
  <tr>
    <td><tt>['hadoop']['mapred_system_dir']</tt></td>
    <td>String</td>
    <td>Mapred system directory</td>
    <td><tt>/mnt/mapred/system</tt></td>
  </tr>
  <tr>
    <td><tt>['hadoop']['log_dir']</tt></td>
    <td>String</td>
    <td>Log directory for Hadoop daemons</td>
    <td><tt>/mnt/log/hadoop</tt></td>
  </tr>
  <tr>
    <td><tt>['hadoop']['pid_dir']</tt></td>
    <td>String</td>
    <td>PID directory for Hadoop Daemons</td>
    <td><tt>/var/run/hadoop</tt></td>
  </tr>
  <tr>
    <td><tt>['hadoop']['role']</tt></td>
    <td>String</td>
    <td>Hadoop Role for the Instance</td>
    <td><tt></tt></td>
  </tr>
</table>

Usage
-----
Create roles for appropriate services - jobtracker, tasktracker, namenode and datanode. Update the run_list and set at least two attributes - ['hadoop']['namenode'] and ['hadoop']['jobtracker'].

If its traditional HDFS

```
name "jobtracker"
description "Role to initiate jobtracker"
run_list [
    "recipe[hadoop::default]"
    ]
default_attributes("hadoop" => {
    "jobtracker" => <jobtracker_ip>,
    "namenode" => <namenode_ip>,
    "role" => "jobtracker"
})
```

If you are using S3 as storage backend.

```
name "tasktracker"
description "Role to initiate tasktracker"
run_list [
    "recipe[hadoop::default]"
    ]
default_attributes("hadoop" => {
    "jobtracker" => <jobtracker_ip>,
    "namenode" => <namenode_ip>,
    "role" => "tasktracker"
    "dfs" => {
        "uri" => "s3://"
    }
    "s3" => {
        "bucket" => <bucket_name>
  }
})
```

#### hadoop::default

The default recipe creates configuration files

* core-site.xml
* mapred-site.xml
* hdfs-site.xml

in /etc/hadoop directory using erb templates available in templates/.

#### hadoop::prepare

This recipe is included in default and is used to create and set appropriate permissions for hadoop directories.

#### hadoop::jobtracker

This recipe enables and starts jobtracker service.

#### hadoop::tasktracker

This recipe enables and starts tasktracker service.

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Test it thoroughly
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Shashank Sahni <shredder12@gmail.com>