
define tinc::host(
  $netname,
  $subnets,
  $publickey,
  $publicaddress=undef,
  $nodename=$::hostname,
)
{

  file { "/etc/tinc/${netname}/hosts/${nodename}":
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('tinc/host.erb'),
  }

}
