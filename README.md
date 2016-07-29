# cic-stackdriver-agent-cookbook

Cookbook for installing stackdriver agent on Linux platforms

## Supported Platforms

* Ubuntu
 - 10
 - 12
 - 14
* Debian
 - 6
 - 7
 - 8
* RHEL / CentOS
 - 5
 - 6
 - 7

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['stackdriver_agent']['api_key']</tt></td>
    <td>String</td>
    <td>API key for Stackdriver agent</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>['stackdriver_agent']['repo_list_jome']</tt></td>
    <td>String</td>
    <td>Remote source directory for stackdriver repo lists</td>
    <td><tt>https://repo.stackdriver.com/</tt></td>
  </tr>
  <tr>
    <td><tt>['stackdriver_agent']['repo_list']</tt></td>
    <td>String</td>
    <td>Remote source filename for stackdriver repo lists</td>
    <td><tt>based on platform and version</tt></td>
  </tr>
  <tr>
    <td><tt>['stackdriver_agent']['local_repo']</tt></td>
    <td>String</td>
    <td>path for copying remote repo list</td>
    <td><tt>based on platform</tt></td>
  </tr>
</table>

## Usage


### cic-stackdriver-agent::default

Include `cic-stackdriver-agent` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[cic-stackdriver-agent::default]"
  ]
}
```

## License and Authors

Author:: Tyler Barto (tyler.barto@reancloud.com)
