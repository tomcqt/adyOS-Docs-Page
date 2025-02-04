---
title: System
parent: Commands
layout: default
permalink: /commands/system
---

# Command Definitions & Usage

## system

- Definition
  - Basically the system settings. Requires superuser access through `super` <sub>[More on `super`.](https://docs.ady.best/commands/super)</sub>
- Usage
  - System Info
    - System Name
      - Get System Name
        - `super system info name get`
      - Set System Name
        - `super system info name set [name]`
        - Replace `[name]` with the system name you want.
  - System Locks
    - Setting `super` access on signup.
      - On
        - `super system locks super on`
      - Off
        - `super system locks super off`
    - Lock signing up.
      - On
        - `super system locks signup on`
      - Off
        - `super system locks signup off`
  - Optional Features
    - Applications
      - `adypm` <sub>[See `adypm`.](https://docs.ady.best/commands/optional/adypm)</sub>
        - Enable
          - `super system optional applications add adypm`
        - Disable
          - `super system optional applications remove adypm`
  - Modify User Data
    - Superuser Access
      - Enable
        - `super system users "[username]" super on`
        - Replace `[username]` with the username of the user you want to modify.
      - Disable
        - `super system users "[username]" super off`
        - Replace `[username]` with the username of the user you want to modify.
- Aliases
  - `system`
