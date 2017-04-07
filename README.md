# Affix filter plugin for Embulk

TODO: Write short description here and embulk-filter-affix.gemspec file.

## Overview

* **Plugin type**: filter

## Configuration

- **affix**: affix(prefix or suffix) (string, default: `"prefix"`)

## Example

```yaml
filters:
  - type: affix
    affix: suffix
```


## Build

```
$ rake
```
