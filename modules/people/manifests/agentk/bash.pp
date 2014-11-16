
class people::agentk::bash {

  include boxen::config
  include homebrew

  package { 'bash': }

  file_line { 'add bash to /etc/shells':
    path    => '/etc/shells',
    line    => "${boxen::config::homebrewdir}/bin/bash",
    require => Package['bash'],
  }

  osx_chsh { $::boxen_user:
    shell   => "${boxen::config::homebrewdir}/bin/bash",
    require => File_line['add bash to /etc/shells'],
  }
}
