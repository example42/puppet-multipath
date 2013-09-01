# Class: multipath::params
#
# This class defines default parameters used by the main module class multipath
# Operating Systems differences in names and paths are addressed here
#
# == Variables
#
# Refer to multipath class for the variables defined here.
#
# == Usage
#
# This class is not intended to be used directly.
# It may be imported or inherited by other classes
#
class multipath::params {

  ### Application related parameters

  $package = $::operatingsystem ? {
    default => 'device-mapper-multipath',
  }

  $service = $::operatingsystem ? {
    default => 'multipathd',
  }

  $service_status = $::operatingsystem ? {
    default => true,
  }

  $process = $::operatingsystem ? {
    default => 'multipathd',
  }

  $process_args = $::operatingsystem ? {
    default => '',
  }

  $process_user = $::operatingsystem ? {
    default => 'root',
  }

  $config_dir = $::operatingsystem ? {
    default => '/etc/multipath',
  }

  $config_file = $::operatingsystem ? {
    default => '/etc/multipath/multipath.conf',
  }

  $config_file_mode = $::operatingsystem ? {
    default => '0644',
  }

  $config_file_owner = $::operatingsystem ? {
    default => 'root',
  }

  $config_file_group = $::operatingsystem ? {
    default => 'root',
  }

  $config_file_init = $::operatingsystem ? {
    /(?i:Debian|Ubuntu|Mint)/ => '/etc/default/multipath',
    default                   => '/etc/sysconfig/multipath',
  }

  $pid_file = $::operatingsystem ? {
    default => '/var/run/multipathd.pid',
  }

  $data_dir = $::operatingsystem ? {
    default => '/etc/multipath',
  }

  $log_dir = $::operatingsystem ? {
    default => '/var/log/',
  }

  $log_file = $::operatingsystem ? {
    default => '/var/log/messages',
  }

  $port = ''
  $protocol = ''

  # General Settings
  $my_class = ''
  $source = ''
  $source_dir = ''
  $source_dir_purge = false
  $template = ''
  $options = ''
  $service_autorestart = true
  $version = 'present'
  $absent = false
  $disable = false
  $disableboot = false

  ### General module variables that can have a site or per module default
  $monitor = false
  $monitor_tool = ''
  $monitor_target = $::ipaddress
  $firewall = false
  $firewall_tool = ''
  $firewall_src = '0.0.0.0/0'
  $firewall_dst = $::ipaddress
  $puppi = false
  $puppi_helper = 'standard'
  $debug = false
  $audit_only = false
  $noops = undef

}
