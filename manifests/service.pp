# == Class: app_6000::service
#
class app_6000::service {

  service { 'app_6000':
    ensure => running,
  }
}
