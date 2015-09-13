# HEREDOC
$longstring = @(EOM)
  This item is managed by Puppet
  EOM
# Remove tabs
$longstring_notabs = @(EOM)
  This item is managed by Puppet
  | EOM
# Remove new lines + trailing line
$longstring_nonewline = @(EOM)
  This item is managed by \
  Puppet
  |- EOM
# Syntax check
$longstring_nonewline = @(EOM:json)
  ["This item is managed by Puppet"]
  |- EOM
