
class people::agentk::homebrew {

    include homebrew

    package {
        'curl': ensure => present;
        'wget': ensure => present;
    }
}
