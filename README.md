[![Build Status](https://travis-ci.org/GeoffWilliams/aix_trustchk.svg?branch=master)](https://travis-ci.org/GeoffWilliams/aix_trustchk)
# aix_trustchk

#### Table of Contents

1. [Description](#description)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
1. [Limitations - OS compatibility, etc.](#limitations)
1. [Development - Guide for contributing to the module](#development)

## Description
Manage Trusted Execution (TE) on AIX using the `trustchk` command and puppet.

## Usage

```puppet
aix_trustchk { "NAME_OF_TE_SETTING":
  value => "VALUE_TO_SET_TO",
}
```

### Example
```puppet
aix_trustchk { "CHKEXEC":
  value => "on",
}
```
In this case, we have set the `CHKEXEC` parameter to be `on`.

## Reference

### Defined types
* `aix_trustchk` - Manage individual tunable parameters using the `trustchk` command.

## Limitations

* AIX only
* Not supported by Puppet, Inc.

## Development

PRs accepted :)

## Testing
This module supports testing using [PDQTest](https://github.com/GeoffWilliams/pdqtest).


Test can be executed with:

```
bundle install
bundle exec pdqtest all
```


See `.travis.yml` for a working CI example
