# Class: seclists
# ===========================
#
# Used to install the seclists payloads repos on Kali.
#
# Parameters
# ----------
#
# * `install_location`
# The directory where you want to install the seclists repo
#
# Requirements
# --------
#
# puppetlabs-git - https://github.com/puppetlabs/puppetlabs-git
# puppetlabs-stdlib - https://github.com/puppetlabs/puppetlabs-stdlib
# puppetlabs-vcsrepo - https://github.com/puppetlabs/puppetlabs-vcsrepo
#
# Examples
# --------
#
#    class { 'seclists':
#      install_location => '/opt/SecLists',
#    }
#
# Authors
# -------
#
# Jayson Grace (l50) <jayson.e.grace@gmail.com>
#
# Copyright
# ---------
#
# Copyright 2016 Jayson Grace (l50)
#
class seclists(
  $install_location=$seclists::params::install_location,
) inherits seclists::params {

  include stdlib
  include git

  vcsrepo { $install_location:
    ensure   => present,
    provider => git,
    source   => 'git://github.com/danielmiessler/SecLists.git',
    require  => Class['git'],
  }
}
