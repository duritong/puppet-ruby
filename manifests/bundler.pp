# manage bundler
class ruby::bundler {
  package{
    'rubygem-bundler':
      ensure => installed,
  }
}
