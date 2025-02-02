---
title: adyPM
parent: Optional Commands
layout: default
permalink: /commands/optional/adypm
---

# _Optional_ Command Definitions & Usage

## adypm

- Definition
  - The package manager for adyOS.
  - Default repo can be found in the top links under "adyPM Default Repository Repo".
  - This command is an _optional command_ and can only be used if enabled with `system`. <sub>[See `system`.](https://ady.tomcat.sh/commands/system)</sub>
- Usage
  - Install a package.
    - `adypm +[package]`
  - Uninstall a package.
    - `adypm -[package]`
  - Add a repository.
    - `adypm /[repo]`
  - Remove a repository.
    - `adypm \\[repo]`
  - For all of the above replace `[package]` with the name of the package you want to (un)install.
  - For all of the above replace `[repo]` with the URL of the repo that you want to add/remove.
- Aliases
  - `adypm`
