$parameters = {
  content => 'foo',
  ensure  => present,
}
$default = {
  noop => true,
}
file {
  default:
    * => $default;
  '/tmp/my_file1':
    * => $parameters;
  '/tmp/my_file2':
    *    => $parameters;
    mode => '0755';
}
