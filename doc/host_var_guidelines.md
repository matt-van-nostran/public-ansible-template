# Host variable file documentation

This document outlines the guidelines for comments and notes within host_var
files in Ansible inventories. The goal is to ensure consistency and clarity when
documenting information not captured in a centralized source of truth, such as a
Configuration Management Database (CMDB).

## Summary

- Don't duplicate information found in sources of truth.
- Give reasoning behind specific configurations or deviations from defaults.
- Use standardized tags for comments when applicable for consistency.
  - \# CNAME:
  - \# ETH#:
  - \# F5URL:
  - \# ISAMURL:

## Purpose of comments

Comments in yaml files should offer context and explain why a value is defined
in a particular way. Avoid restating what the item does, as this information is
usually evident from the variable name or functionality.

- Do's

  - Explain the reasoning behind specific configurations or deviations from
    defaults.
  - Provide essential context to aid troubleshooting and understanding of
    configurations.

- Don'ts

  - Include ticket references (this information belongs in the commit message).
  - Include requester names (this should be documented in the ticketing system).

By adhering to these principles, the host_var files will remain concise,
focused, and useful for future maintainers.

## Standardized comment tags

To facilitate searching and parsing, use the following standardized tags when
documenting specific configuration items. Each tag must begin exactly as
specified below. Provide extra context where necessary.

### Tags and usage

#### CNAME records

- Tag: # CNAME:
- Purpose: Document the DNS CNAME record associated with the host.
- Example:

      # CNAME: satellite.ohio.edu

#### Ethernet details

- Tag: # ETH#:
- Purpose: Document IP addresses on secondary network interfaces. ETH0 is
  assumed to be the primary interface and is optional to specify.
- Example:

      # ETH0: 192.168.0.120
      # ETH1: 10.0.0.22
      # ETH2: 10.1.0.22

#### F5 configuration

- Tag: # F5URL:
- Purpose: Specify the URL and IP resources managed by F5 Load Balancers.
- Example:

      # F5URL: https://webapp.ohio.edu 132.235.80.17:[80|443] => 10.10.0.23:[80|443]
      # F5URL: https://webapp.ohio.edu 132.235.80.17:443 => 10.10.0.23:8080
      # F5URL: https://webapp.ohio.edu 132.235.80.17:80 => 10.10.0.23:80
      # F5URL: ldaps://ad.ohio.edu 132.235.80.17:636 => 10.10.0.23:636
      # F5URL: smtp://webapp.ohio.edu 132.235.80.17:25 => 10.10.0.23:25

#### ISAM configuration

- Tag: # ISAMURL:
- Purpose: Specify the URL and IP resources managed by IBM Security Access
  Manager (ISAM).
- Example:

      # ISAMURL: https://webapp.ohio.edu 132.235.80.17:443 => 10.10.0.23:8450

## Additional guidelines

- Consistency: Ensure uniform formatting and spacing for all comments.
- Relevance: Avoid including redundant or irrelevant details that do not assist
  with understanding or troubleshooting.
- Readability: Write comments in plain language, avoiding overly technical
  jargon unless necessary.
