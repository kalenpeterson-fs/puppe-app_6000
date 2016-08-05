# == Class: app_6000::mcollective
#
class app_6000::mcollective {

  $mcoLibDir = $::app_6000::params::mcoLibDir

  file { 'deploy.rb':
    ensure => present,
    path   => "${mcoLibDir}/agents/deploy.rb",
    source => 'puppet:///modules/app_6000/deploy.rb',
    notify => Service['mcollective'],
  }

  file { 'deploy.ddl':
    ensure => present,
    path   => "${mcoLibDir}/agents/deploy.ddl",
    source => 'puppet:///modules/app_6000/deploy.ddl',
    notify => Service['mcollective'],
  }
}
