class vhosts (Hash[String, String] $packages,){
  $packages.filter | String $package, String $version | {
    $version != 'latest'
  }.each | String $package, String $version | {
    package {
      "vhost-${package}":
        ensure => $version,
    }
  }
  $foo_version = Package["foo"]["version"]
}
