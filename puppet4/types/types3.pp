class profile_mysql (
  Boolean $manage_service,
  Enum['mysql', 'mariadb'] $service_name,
  Optional[String[8]] $root_password,
){

}
