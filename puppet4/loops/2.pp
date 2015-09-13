class vhosts (Hash[String, String] $packages,){
  $packages.each | String $package, String $version | {
    package {
      "vhost-${package}":
        ensure => $version,
    }
  }
}
