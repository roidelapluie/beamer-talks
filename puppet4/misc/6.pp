$parameters = {
  mode    => '0755',
  content => 'foo',
}

file {
  '/tmp/myfile':
    * => $parameters
}
