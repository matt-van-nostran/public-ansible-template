# Naming conventions for Ansible playbooks

## Purpose

This document outlines the naming conventions for Ansible playbooks in this
repository. The conventions ensure that playbooks are consistently named,
identifiable, and organized for seamless integration with Ansible AWX.

## Summary

- Use the `csi-[os-identifier]-[function].yml` format for OS-specific playbooks
  and `csi-[function].yml` for OS-agnostic playbooks.
- Accompany each playbook with a .md file documenting its purpose and variables.
- Ensure playbook names and titles are descriptive, concise, and optimized for
  AWX organization.

## Naming convention

### Format

All playbook and markdown filenames must follow one of these structures:

1. Operating system specific playbooks:

    ```csi-[os-identifier]-[function].[yml|md]```

    - csi: Fixed prefix indicating the playbook belongs to the CSI product
      team.
    - [os-identifier]: A single character identifying the target operating
      system:
      - l: Linux
      - w: Windows
    - [function]: A short, descriptive term indicating the purpose or module of
      the playbook.
      - Functions that need multiple words should use hyphens for spacing.

2. Operating system agnostic playbooks:

    ```csi-[function].[yml|md]```

    - csi: Fixed prefix.
    - [function]: A short, descriptive term indicating the purpose or module of
      the playbook.
      - Functions that need multiple words should use hyphens for spacing.
    - No OS identifier is used since the playbook applies to both Linux and
      Windows.

### Examples

#### Operating system specific playbooks

|Playbook Name | Description |
| ------------ | ----------- |
| csi-l-time.yml	| Configures time on a Linux host. |
| csi-w-users.yml | Manages users on a Windows host. |
| csi-l-system-update.yml | Updates system packages on Linux. |

#### Operating system agnostic playbooks

|Playbook Name | Description |
| ------------ | ----------- |
| csi-setup.yml	| Collects system facts on both Linux and Windows using the ansible.builtin.setup module. |
| csi-ping.yml | Verifies connectivity to both Linux and Windows hosts using when statements. |

## Markdown documentation requirements

Each playbook must have an accompanying markdown file with the same base name
but with the .md extension. This file serves as essential documentation for the
playbook and serves as a guide for AWX integration.

### Template

A [template](00-template.md) markdown file is provided in this directory, which
should be used as the starting point to improve consistency.

1. Title content:

    -  The title (first line) should represent how the playbook is displayed in
       AWX:

        ```# CSI [OS-Name or Purpose] [Function]```

      - Replace [OS-Name] with the operating system name (Linux or Windows) or
        leave it out for OS-agnostic playbooks.
      - Replace [Function] with the playbook’s purpose.

2. Body content:

    - Fill out the remaining template section as described in the template.

### Examples

#### Operating system specific markdown

|File Name | Title |
| ------------ | ----------- |
| csi-l-time.md	| CSI Linux Time |
| csi-w-users.md | CSI Windows Users |
| csi-l-system-update.md | CSI Linux System Update |

#### Operating system agnostic markdown

|File Name | Title |
| ------------ | ----------- |
| csi-setup.md	| CSI Setup Module |
| csi-ping.md | CSI Ping Host |

## Benefits of naming conventions

1. Consistency:
    - Ensures playbooks and documentation follow a predictable structure.
    - Simplifies repository navigation and playbook discovery.

2. Organization in Ansible AWX:
    - Titles in markdown files match how templates appear in AWX.
    - Playbooks are neatly grouped and identifiable by purpose and inventory.

3. Flexibility:
    - Allows for clear differentiation between OS-specific and OS-agnostic
      playbooks.

1. Ease of maintenance:
    - Clear filenames reduce ambiguity, aiding in repository and workflow
      management.
