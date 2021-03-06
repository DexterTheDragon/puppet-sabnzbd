# == Class: sabnzbd
#
# Full description of class sabnzbd here.
#
# === Parameters
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#
class sabnzbd (
  $use_ppa = true,
  $user = undef,
  $config = undef,
  $host = undef,
  $port = undef,
  $extra_opts = undef,
) inherits sabnzbd::params {

  # validate parameters here

  class { 'sabnzbd::install': } ->
  class { 'sabnzbd::config': } ~>
  class { 'sabnzbd::service': } ->
  Class['sabnzbd']
}
