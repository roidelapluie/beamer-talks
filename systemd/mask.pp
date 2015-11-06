file {
  '/etc/systemd/system/mariadb.service':
    ensure => link,
    target => '/dev/null',
    notify => Exec['systemctl daemon-reload'],
}
