# == Class: app_6000::params
#
class app_6000::params {

  case $::osfamily {
      'RedHat': {
        $provider  = 'yum'
      }
      'Debian': {
        $provider  = 'apt'
      }
      'windows': {
        $provider  = 'chocolatey'
      }
      default: {
        fail("${::osfamily} is not supported")
      }
  }
}
