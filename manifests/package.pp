class subsonic::package {

  package  { $subsonic::packages:
    ensure  => $subsonic::ensure,
    require => Apt::Source['subsonic'],
  }

}
