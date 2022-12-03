# Set up regular Puppet runs
file { '/usr/local/bin/run-puppet':
  source => '/etc/puppetlabs/code/environments/production/files/run-puppet.sh',
  mode   => '0755',
}

cron { 'run-puppet':
  command => '/usr/local/bin/run-puppet',
  hour    => '*',
  minute  => '*',
}

file { '/tmp/cron_test1.txt':
  ensure  => file,
  content => "test cron is working good!",
}

file { '/tmp/cron_test2.txt':
  ensure  => file,
  content => "test cron is working good!",
}
