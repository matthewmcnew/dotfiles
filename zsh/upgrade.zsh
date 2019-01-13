function upgrade_all() {

    set -x
    echo "upgrading"

    brew update

    brew outdated
    brew cask outdated

    brew upgrade

}