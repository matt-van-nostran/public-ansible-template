# Ansible Galaxy Collections

Documentation for how to use this feature can be found on the
[Galaxy User Guide](https://docs.ansible.com/ansible/latest/galaxy/user_guide.html).

Version ranges are supported for collection requirements.

Note that the included [.gitignore](.gitignore) file will ignore new roles and
collections. This is because some of these include *a lot* of files which can be
problematic, and syncing community collections in your repo defeats the purpose
of the requirements file. Define them here, and then download them locally. When
you upgrade your version requirements, just just delete the old collection
directory and run the install command again to get the latest versions.

## Installing collections from the requirements file

Refer to the official documentation above for the most comprehensive overview
on how to use these collections. The commands below are offered as a starting
point but will be sufficient for most use cases.

From the root level of this reposity, run the command below to locally install
the collections defined in your [requirements.yml](requirements.yml). This will
install all of the defined collections and place them inside of the collections
directory.

```bash
ansible-galaxy collection install -r collections/requirements.yml -p collections
```

## Installing collections manually

```bash
ansible-galaxy collection install [collection.name,version] -p collections
```
