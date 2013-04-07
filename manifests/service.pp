class subsonic::service {

	service { 'subsonic':
		ensure     => running,
		hasstatus  => true,
		hasrestart => true,
		enable     => true,
		require    => Class['subsonic::package'],
	}
}
