class subsonic::package {

	package  { $subsonic::packages:
		ensure => $subsonic::ensure,
		require => Apt::Source['subsonic'],
	}

	# The SABnzbd+ ppa
	# apt::ppa { "ppa:jcfp/ppa": }

	apt::source { 'subsonic':
		ensure      => $subsonic::ensure,
		location    => 'http://ppa.launchpad.net/jcfp/ppa/ubuntu',
		key         => 'F13930B14BB9F05F',
		include_src => false,
	}
}
