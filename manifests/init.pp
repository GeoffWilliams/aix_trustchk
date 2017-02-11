# Aix_trustchk
#
# Manage Trusted Execution (TE) with Puppet on AIX using the trustchk command
#
# @param value Value to set
# @param key Setting to change
define aix_trustchk(
    $value,
    $key = $title,
) {

  # trustchk prints informational messages to stderr ;-)
  exec { "aix_trustchk->${key}":
    command => "trustchk -p ${key}=${value}",
    unless  => "trustchk -p ${key} 2>&1 | awk -F= '{print $2}'| grep ${value}",
    path    => ['/usr/sbin', '/usr/bin','/bin'],
  }
}
