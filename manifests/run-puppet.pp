# Set up regular Puppet runs
file { '/usr/local/bin/run-puppet':
  source => '/etc/puppetlabs/code/environments/production/files/run-puppet.sh',
  mode   => '0755',
}

cron { 'run-puppet':
  command => '/usr/local/bin/run-puppet',
  hour    => '*',
  minute  => '*/15',
}

file { '/tmp/cron_01.txt':
  ensure  => file,
  content => "Batch 1 successfully applied\n",
}

file { '/tmp/cron_02.txt':
  ensure  => file,
  content => "Batch 2 successfully applied\n",
}

file { '/tmp/cron_03.txt':
  ensure  => file,
  content => "Batch 3 successfully applied\n",
}

file { '/tmp/cron_04.txt':
  ensure  => file,
  content => "Batch 4 successfully applied\n",
}
