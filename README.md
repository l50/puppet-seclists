puppet-seclists
===================
[![License](http://img.shields.io/:license-mit-blue.svg)](http://doge.mit-license.org)

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is
   useful](#module-description)
3. [Setup - The basics of getting started with discover](#setup)
    * [Setup requirements](#setup-requirements)
    * [Installing seclists](#installing-seclists)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

Used to install the [SecLists](https://github.com/danielmiessler/SecLists) payloads repository on Kali Linux.

## Module Description

This module will install the SecLists security payloads repository. These payloads are immensely helpful when 
conducting a penetration test.

## Setup

### Setup Requirements

The following puppet modules are required for this module to work
properly. Please add them to your Puppetfile like so:

```
mod 'puppetlabs/git'
mod 'puppetlabs/vcsrepo'
```

### Installing SecLists

Simply specify the directory you wish the SecLists repo to be installed in as
a parameter and run the module as you would any other.

## Usage
Install the SecLists repo extension in /opt/SecLists:
```
class { 'seclists':
  install_location => '/opt/SecLists',
}
```

## Limitations

This has been tested on Kali only.

## Development

Feel free to fork this up and issue a pull request if you want to
improve on the work that has already been done.

## Release Notes/Contributors/Etc

Jayson Grace (l50) <jayson.e.grace@gmail.com>
