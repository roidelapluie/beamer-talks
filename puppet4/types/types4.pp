# NOT CORRECT:
String $runmode = $facts['runmode']

# Correct:
$runmode = assert_type(String , $facts['runmode'])
