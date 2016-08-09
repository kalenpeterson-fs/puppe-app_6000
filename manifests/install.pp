# == Class: app_6000::install
#
class app_6000::install {

  $provider = $::app_6000::params::provider

  package { 'app_6000':
    ensure   => latest,
    provider => $provider,
  }
}
