# == Class: app_6000::mcollective
#
class app_6000::mcollective {

  $mcoLibDir = $::app_6000::params::mcoLibDir

  # Manage the Deploy MCO Agent ruby file
  file { 'agent_deploy.rb':
    ensure => present,
    path   => "${mcoLibDir}/mcollective/agent/deploy.rb",
    source => 'puppet:///modules/app_6000/mcollective/agent/deploy.rb',
    notify => Service['mcollective'],
  }

  # Manage the Deploy MCO Agent ddl file
  file { 'agent_deploy.ddl':
    ensure => present,
    path   => "${mcoLibDir}/mcollective/agent/deploy.ddl",
    source => 'puppet:///modules/app_6000/mcollective/agent/deploy.ddl',
    notify => Service['mcollective'],
  }

  # Manage the Deploy MCO Application
  file { 'application_deploy.rb':
    ensure => present,
    path   => "${mcoLibDir}/mcollective/application/deploy.rb",
    source => 'puppet:///modules/app_6000/mcollective/application/deploy.rb',
    notify => Service['mcollective'],
  }
}
