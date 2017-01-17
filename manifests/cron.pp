# Class for managing aide's cron job.
class aide::cron inherits aide {
  file { '/etc/cron.daily/aide-cron':
    owner   => 'root',
    group   => 'root',
    mode    => '0700',
    content => template('aide/aide-cron.erb'),
  }
}
