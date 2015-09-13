# Comparison
if $m =~ Boolean {
  $manage = $m
} elsif $m !~ Enum['true', 'false'] {
  fail('Bad value')
}
