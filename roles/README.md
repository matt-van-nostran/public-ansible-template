# Ansible Galaxy Roles

Documentation for how to use this feature can be found on the
[Galaxy User Guide](https://docs.ansible.com/ansible/latest/galaxy/user_guide.html).

Version ranges are not supported for role requirements.

Note that the included [.gitignore](.gitignore) file will ignore new roles and
collections. This is because some of these include *a lot* of files which can be
problematic, and syncing community roles in your repo defeats the purpose of the
requirements file. Define them here, and then download them locally. When you
upgrade your version requirements, just delete the old role directory and run
the install command again to get the latest versions.

## Installing roles from the requirements file

Refer to the official documentation above for the most comprehensive overview
on how to use these roles. The commands below are offered as a starting point
but will be sufficient for most use cases.

From the root level of this reposity, run the command below to locally install
the roles defined in your [requirements.yml](requirements.yml). This will
install all of the defined roles and place them inside of the roles directory.

```bash
ansible-galaxy role install -r roles/requirements.yml -p roles -vvv
```

## Installing a role manually

```bash
ansible-galaxy role install [role.name,version] -p roles
```
