
class people::agentk::karabiner {

    # From: https://github.com/boxen/puppet-karabiner

    include karabiner

    karabiner::private_xml { 'private.xml':
      content => '<?xml version="1.0"?>
<root>
    <item>
        <name>F19 to Hyper</name>
        <appendix>(F19 to Hyper (ctrl+shift+cmd+opt)</appendix>
        <identifier>private.f192hyper</identifier>
        <autogen>
            --KeyOverlaidModifier--
            KeyCode::F19,
            KeyCode::COMMAND_L,
            ModifierFlag::OPTION_L | ModifierFlag::SHIFT_L | ModifierFlag::CONTROL_L
        </autogen>
    </item>
</root>'
    }

    karabiner::enable { 'private.f192hyper': }

}
