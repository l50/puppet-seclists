class seclists::params {
  case $::osfamily {
    'Debian': {
      $install_location='/opt/SecLists'
    }
    default: {
      fail("Unsupported OS family: ${::osfamily}")
    }
  }
}
