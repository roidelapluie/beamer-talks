file {
  'pt-heartbeat-config':
    show_diff  => false,
    content    => epp('pth/pth.epp', {
      database => $database,
      socket   => $socket,
      user     => $user,
      password => $password,
    }),
}
