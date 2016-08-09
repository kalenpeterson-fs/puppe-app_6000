# == Class: app_6000::params
#
class app_6000::params {

  case $::osfamily {
      'RedHat': {
        $mcoLibDir = '/opt/puppetlabs/mcollective/plugins'
        $provider  = 'yum'
      }
      'Debian': {
        $mcoLibDir = '/opt/puppetlabs/mcollective/plugins'
        $provider  = 'apt'
      }
      'windows': {
        $mcoLibDir = "${::env_windows_installdir}/mcollective/lib"
        $provider  = 'chocolatey'
      }
      default: {
        fail("${::osfamily} is not supported")
      }
  }
}
