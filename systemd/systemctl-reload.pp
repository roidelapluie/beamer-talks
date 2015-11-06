file {
  '/etc/systemd/system/mariadb.service.d/niceness.conf':
    ensure  => present,
    content => template('systemd/niceness.erb'),
    notify  => [ Exec['systemctl-daemon-reload'],
                 Service['mariadb'], ]
}
exec {
  'systemctl-daemon-reload':
    command     => '/usr/bin/systemctl reload-daemon',
    refreshonly => true,
}
service {
  'mariadb':
    ensure  => running,
    require => Exec['systemctl-daemon-reload'],
}
