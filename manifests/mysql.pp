# install ruby mysql lib
class ruby::mysql {
  include ruby
  if versioncmp($facts['os']['release']['major'],'9') < 0 {
    $pkg_name = 'ruby-mysql'
  } else {
    $pkg_name = 'ruby-mysql2'
  }
  package{$pkg_name:
    ensure  => present,
    require => Package['ruby'],
  }
}
