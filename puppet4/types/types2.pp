case $user {
  Integer: { $uid = $user }
  Boolean: { $create = $user }
  default: { fail('Bad Data Type') }
}
