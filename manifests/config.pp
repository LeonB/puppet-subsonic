class subsonic::config {

  # do package before config
  Users::Account[$subsonic::user] -> Class['subsonic::package']

  users::account { $subsonic::user:
    ensure  => $subsonic::ensure,
    uid     => 140,
    groups  => ['sabnzbdplus', 'sickbeard'],
    home    => '/var/subsonic',
    shell   => '/bin/false',
    comment => 'Subsonic',
  }

  nginx::vhost::snippet { 'subsonic':
    ensure  => $subsonic::ensure,
    vhost   => 'default',
    content => template('subsonic/nginx_vhost.erb'),
  }

  file { '/etc/default/subsonic':
    ensure  => $subsonic::ensure,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('subsonic/default/subsonic.erb'),
  }
}
