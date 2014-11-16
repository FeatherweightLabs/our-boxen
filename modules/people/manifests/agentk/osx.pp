
class people::agentk::osx {

    # From: https://github.com/boxen/puppet-osx

    # One-shot settings

    include osx::global::disable_key_press_and_hold
    include osx::global::enable_keyboard_control_access
    include osx::global::expand_save_dialog
    include osx::global::disable_autocorrect
    include osx::global::natural_mouse_scrolling

    include osx::finder::show_all_on_desktop
    include osx::finder::unhide_library
    include osx::finder::enable_quicklook_text_selection

    include osx::no_network_dsstores
    include osx::software_update

    class { 'osx::global::key_repeat_delay':
        delay => 10
    }

    class { 'osx::global::key_repeat_rate':
        rate => 2
    }

    class { 'osx::universal_access::cursor_size':
        zoom => 2
    }

    class { 'osx::dock::icon_size':
        size => 36
    }

    class { 'osx::dock::position':
        position => 'bottom'
    }

}
