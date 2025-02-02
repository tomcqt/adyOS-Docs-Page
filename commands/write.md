---
title: Write
layout: default
parent: Commands
permalink: /commands/write
---

# Command Definitions & Usage

## write

- Definition
  - Lets you write text files from within adyOS.
- Usage
  - Write a line.
    - `write [file name] [line number] [text to write]`
    - Replace `[file name]` with the name of the file you want to write
    - Replace `[line number]` with the line number you want to write. (Can be found with `read`.) <sub>[See `read`.](https://ady.tomcat.sh/commands/read)</sub>
    - Replace `[text to write]` with the text that you want to write. Can contain multiple spaces.
  - Delete a line.
    - `write [file name] [line number]`
    - Replace `[file name]` with the name of the file you want to write
    - Replace `[line number]` with the line number you want to write. (Can be found with `read`.) <sub>[See `read`.](https://ady.tomcat.sh/commands/read)</sub>
- Aliases
  - `write`
