# 'private' variables
with('ldap','secret') |$user, $password| {
  file {
    '/etc/secrets':
      content => "${user}:${secret}",
  }
}
