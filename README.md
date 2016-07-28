# cic-stackdriver-agent-cookbook

TODO: Enter the cookbook description here.

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

Author:: YOUR_NAME (<YOUR_EMAIL>)
