# Templates

This directory can be used to place jinja templates that you want to deploy
using playbooks or roles. Jinja templates usually contain variable placeholders
which can be used to render the file dynamically depending on the variable
value. That can be controlled at the play, role, group var, or host var level.
It's incredibly flexible and handy.

More information can be found in the official documentation from Ansible for
[templating](https://docs.ansible.com/ansible/latest/playbook_guide/playbooks_templating.html).
