# Template Ansible repository
Template for applications or configurations deployed using Ansible

- [Template Ansible repository](#template-ansible-repository)
  - [Overview](#overview)
  - [General usage](#general-usage)
  - [Ansible-lint](#ansible-lint)
  - [Devcontainer](#devcontainer)
  - [Ansible-vault](#ansible-vault)
  - [Visual Studio Code](#visual-studio-code)
    - [Recommended plugins](#recommended-plugins)
    - [Optional plugins](#optional-plugins)
  - [System setup](#system-setup)
    - [Linux](#linux)
    - [Mac](#mac)
    - [Windows](#windows)
      - [Windows Subsystem for Linux](#windows-subsystem-for-linux)
      - [Vagrant](#vagrant)
  - [Ansible setup](#ansible-setup)

## Overview

This is a template Ansible repository based on the standard
[Directory Layout](https://docs.ansible.com/ansible/2.8/user_guide/playbooks_best_practices.html#directory-layout)
from the official Ansible Best Practices.

This repository provides common starting point for managing an application,
deployment, or configuration using Ansible. You should read all of the official
Ansible documentation and the various README files provided in this template
before you get started.

This README file should be cleared and become the start of your own
documentation once you are ready to do so.

## General usage

Ideally, everything to complete your task should be controlled via this repo.
All changes should be performed in a topic branch then merged into the main
branch in order for the included
[ansible-lint](.github/workflows/ansible-lint.yml) to work correctly.


## Ansible-lint

Ansible-lint, as the name suggests, is a linter for Ansible. You may run it from
the CLI or by using GitHub actions to validate that your code is clean before
merging.

This template includes a GitHub workflow which runs ansible-lint every time you
submit a pull request to the `main` branch. Documentation on the action, and
links to the official ansible-lint documentation, can be found on the GitHub
Actions webpage for
[ansible-lint](https://github.com/marketplace/actions/run-ansible-lint).

If you do not want to use the ansible-lint action, or wish to modify it, you may
delete it or update it as needed. The [.ansible-lint](.ansible-lint)
configuration file has a mix of default options combined with our suggestions,
including a default profile of `production` which is the most stringent to
ensure you are following best practices. Read the documentation and update for
your own needs.

## Devcontainer

This template also includes the files necessary to run a devcontainer, which
will cause VSCode to ask you if you want to re-open the repository in a
container. The benefit of that is that it will contain all of the binaries you
need, including ansible/ansible-lint/etc. If you do not want this, delete the
[.devcontainer](.devcontainer/) directory.

If you do not use this, and want to run ansible or ansible-lint commands locally
you will need to install the binaries on your own following the recommendation
in the [Ansible Setup](#ansible-setup) section.

## Ansible-vault

If you wish to encrypt variables or data in your repository, you may wish to
use ansible-vault. Read the official
[documentation](https://docs.ansible.com/ansible/latest/vault_guide/index.html)
for the most details on that. Be aware that defining some vault configuration in
the repository's [ansible.cfg](ansible.cfg) file does not play nicely with AWX.
If you may want to define that content in your own home directory at
`~/.ansible.cfg` and create your vault passwords in your home directory as well,
unless you want to pass the --ask-vault-pass flag for every playbook.

Example files to create in your home directory
```
~/.ansible.cfg
~/.vault-pass.standard
```

## Visual Studio Code

We recommend VSCode for working in these repositories:
<https://code.visualstudio.com/>

### Recommended plugins

For the most part it has everything one should need, but there are a few
recommended plugins for working with ansible and yaml, and the included
[.vscode/extensions.json](.vscode/extensions.json) will recommend some others to
you as well, which you can remove or customize as needed.

* ansible
* vscode-yaml
* vscode-icons

### Optional plugins

There are plenty of other vscode plugins one can explore, but here are a few
others we have found useful.

* eamodio.gitlens
* felipecaputo.git-project-manager
* Tyriar.sort-lines

## System setup

Before you can start running ansible, you need to install a few packages
locally. You will need python3, pip, git, docker or podman (if you plan to use
an ansible execution environment), and ansible-core at bare minimum.

### Linux

Install python3 and git, if not already available.

- RedHat/CentOS/Fedora: `sudo dnf install -y python3 pipx git`

- Debian/Ubuntu: `sudo apt install -y python3 pipx git`

Install python3 pip3 using one of the methods below.

- Python module: `python3 -m ensurepip`

- Package manager: `sudo dnf install python3-pip` or
`sudo apt install python3-pip`

Install either docker or podman if you plan to use an ansible execution
environment or a devcontainer, otherwise skip this step.

- RedHat/CentOS/Fedora: `dnf install -y docker` or `dnf install -y podman
  podman-docker`

- Debian/Ubuntu: `apt install -y docker` or `apt install -y podman
  podman-docker`

### Mac

We recommend using [Homebrew](https://brew.sh/) to install the required
packages.

``` bash
brew install git
brew install docker
```

### Windows

Windows cannot function as an Ansible controller, so using Ansible from Windows
will require a little more work. I'll cover two different solutions below. Once
you have a working environment using one of the methods below you can install
ansible using the direction for Linux, above.

#### Windows Subsystem for Linux

Windows Subsystem for Linux is a nice tool for running a near-native Linux
experience on Windows, with your choice of distribution. The most likely
distribution most will use is Ubuntu LTS, however there are some good options
using AlmaLinux, SUSE, or Debian. These instructions will not describe *how* to
install these, there are better guides online to get you there.

Once you have your WSL instance running, you can install Git using the native
package manager, perform the config, and clone the repo to start working with
the repo and ansible.

**Note:** the largest downside to WSL is that it relies on the host Windows OS
for the docker service, which if you're using ansible-navigator will be a
requirement. This means that you will most likely also need to install
[Rancher Desktop](https://rancherdesktop.io/) in order to obtain a docker
binary, due to the official Docker Desktop
[licensing changes](https://www.theregister.com/2021/08/31/docker_desktop_no_longer_free/)
put in place in 2021. Although there is an exception for educational use, the
language currently clarifies that this is true for students or instructors.

#### Vagrant

The next best option for Windows users is to install
[vagrant](https://developer.hashicorp.com/vagrant/docs/installation), which
effectively runs a virtual machine using whatever Linux distrution you wish, via
their "vagrant boxes." Vagrant is simply an interface to streamline VM
deployments on a local machine. Therefore you will also need to install a
supported hypervisor such as Virtualbox or Hyper-V. Our recommendation would be
to use VirtualBox since more vagrant boxes support it.

Medium has a decent
[guide](https://medium.com/@botdotcom/installing-virtualbox-and-vagrant-on-windows-10-2e5cbc6bd6ad)
on installing VirtualBox and vagrant, adding your firstbox, starting it, and
connecting to it. This should be a good path to get you started. Additional
vagrant boxes can be found on their
[website](https://app.vagrantup.com/boxes/search), but be sure to search for
boxes that support your hypervisor.

## Ansible setup

The
[recommended](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#installing-and-upgrading-ansible-with-pipx)
installation method for Ansible is by using the pipx package. This process
may vary depending on your OS or distribution, so read the documentation
accordingly. The notes below should be used as a guide, but may get you up and
running successfully.

The pipx install method does install this in your local user binary path only
and is not a system installed package. You will be required to maintain the
updates to these packages accordingly, but it is very easy.

``` bash
pipx install ansible-core
pipx install ansible-lint
pipx install ansible-navigator # optional
```

To upgrade your existing installation of these, use the below commands.

``` bash
pipx upgrade ansible-core
pipx upgrade ansible-lint
pipx upgrade ansible-navigator # optional
```
