class subsonic(
	$packages = params_lookup( 'packages' ),
	$subsonic = params_lookup( 'subsonic' ),
	$enabled  = params_lookup( 'enabled' ),
  ) inherits subsonic::params {

  	$ensure = $enabled ? {
  		true => present,
  		false => absent
  	}

	include subsonic::package, subsonic::config, subsonic::service
}
