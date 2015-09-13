class vhosts (Array[String] $packages,){
  $packages.each | String $package | {
    package {
      "vhost-${package}":
        ensure => present,
    }
  }
}
