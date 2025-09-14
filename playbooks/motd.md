# CSI Linux Message of the Day (MOTD)

This playbook configures the Message of the Day (MOTD) on Linux servers by
deploying the specified content to the `/etc/motd` file. It ensures a consistent
greeting message is displayed upon server login.

## Dependencies

None.

## Environment

- Linux

## Variables

- **motd_content**: The message(s) to be displayed. This is expected to be a
string, and if it needs to be multi-line it supports standard yaml syntax using
a pipe first.

## Tags

None.

## Error handling

None.

## Contributors

- [Kyle Barstow](barstown@ohio.edu)
- [Will Presley](willpresley@ohio.edu)
