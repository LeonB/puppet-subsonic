# Class: subsonic::params
#
# This class defines default parameters used by the main module class subsonic
# Operating Systems differences in names and paths are addressed here
#
# == Variables
#
# Refer to subsonic class for the variables defined here.
#
# == Usage
#
# This class is not intended to be used directly.
# It may be imported or inherited by other classes
#
class subsonic::params {

  ### Application related parameters

  $packages = $::operatingsystem ? {
    default => ['subsonic', 'default-jre']
  }

  $enabled = true

  $user = 'subsonic'

}
