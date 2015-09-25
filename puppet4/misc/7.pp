file {
  default:
    mode    => '0755',
    content => 'foo';
  '/tmp/my_file1':;
  '/tmp/my_file2':
    mode => '0644',
} # Same as:
file {
  '/tmp/my_file1':
    mode    => '0755',
    content => 'foo';
  '/tmp/my_file2':
    mode    => '0644',
    content => 'foo';
}
