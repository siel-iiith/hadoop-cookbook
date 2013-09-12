hadoop Cookbook
===============

Installs and Configures Hadoop on Savanna Ubuntu Image.

Requirements
------------

This cookbook is part of HadoopStack. In order to skip the time required in installation of Hadoop on Instances, we decided to use an image with Hadoop pre-installed. Savanna developers have already created such an image for Ubuntu and Fedora.

https://savanna.readthedocs.org/en/latest/userdoc/vanilla_plugin.html

This cookbook currently configures Hadoop on Savanna Ubuntu Image.

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
    <td><tt>['hadoop']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

Usage
-----
#### hadoop::default
TODO: Write usage instructions for each cookbook.

e.g.
Just include `hadoop` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[hadoop]"
  ]
}
```

Contributing
------------
TODO: (optional) If this is a public cookbook, detail the process for contributing. If this is a private cookbook, remove this section.

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Shashank Sahni <shredder12@gmail.com>