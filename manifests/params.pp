# == Class: app_6000::params
#
class app_6000::params {

  case $::osfamily {
      'RedHat': {
        mcoLibDir = '/usr/libexec/mcollective'
      }
      'Debian': {
        mcoLibDir = '/usr/share/mcollective/plugins'
      }
      'windows': {
        mcoLibDir = "${::env_windows_installdir}/mcollective/lib"
      }
      default: {
        fail("${::osfamily} is not supported")
      }
  }
}
