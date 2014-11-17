
class people::agentk::applications {

    include alfred
    include better_touch_tools
    include chrome
    include codekit
    include omnifocus
    include omnigraffle
    include onepassword
    include spotify
    include textexpander
    include sublime_text

    package { 'OmniOutliner':
        provider => appdmg_eula,
        source   => 'http://downloads2.omnigroup.com/software/MacOSX/10.9/OmniOutliner-4.1.4.dmg'
    }

    package { 'FoldingText':
        provider => appdmg,
        source   => 'https://s3.amazonaws.com/foldingtext/FoldingText.dmg',
    }

}
