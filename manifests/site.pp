node default {
  file { '/root/README':
    ensure  => absent,
    content => 'This is a readme',
    owner   => 'root',
  }
}
