

class people::agentk {

    include people::agentk::applications
    include people::agentk::karabiner

    $home     = "/Users/${::boxen_user}"
    # $my       = "${home}/my"
    $dotfiles = "${my}/dotfiles"

    # notify { 'hello world': }

    # file { $my:
    #   ensure  => directory
    # }

    # repository { $dotfiles:
    #   source  => 'agentk/dotfiles',
    #   # require => File[$my]
    # }

}
