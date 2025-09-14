# CSI Linux logrotate

The [csi-l-logrotate.yml](csi-l-logrotate.yml) playbook uses the
[robertdebock.logrotate](https://galaxy.ansible.com/ui/standalone/roles/robertdebock/logrotate/documentation/)
module configures logrotate.

## Dependencies

- Roles:
  - [robertdebock.logrotate](https://galaxy.ansible.com/ui/standalone/roles/robertdebock/logrotate/documentation/)

```bash
ansible-galaxy role install robertdebock.logrotate
```

## Environment

- Linux

## Variables

- **logrotate_frequency**: This sets how often to rotate logs, either daily,
  weekly or monthly.
- **logrotate_keep**: Sets how many rotated files to keep.
- **logrotate_compress**: Compresses rotated logs.
- **logrotate_dateext**: Append date extension on log file names.
- **logrotate_entities**: Top level variable that accepts a list of dictionaries
  which includes parameters as seen in the
  [entry.j2](https://github.com/robertdebock/ansible-role-logrotate/blob/master/templates/entry.j2)
  template. Refer to official
  [logrotate documentation](https://linux.die.net/man/8/logrotate) for how to
  use these options.

## Tags

None

## Error handling

The robertdebock.logrotate role ensures that provided parameters are within
reason and will fail if it's expectations aren't met.

## Contributors

- [Oghenekevwe Oberiko](oberiko@ohio.edu)
