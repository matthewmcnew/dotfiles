function upgrade_brew(){
    echo "upgrading brew"
    brew update

    brew outdated
    brew cask outdated

    brew upgrade
    brew cask upgrade
}

function upgrade_all() {
    set -x
    upgrade_dotfiles
    upgrade_brew
    set +x
    upgrade_antibody
    softwareupdate -i -a
}

function upgrade_dotfiles(){
    pushd ~/workspace/dotfiles
        git pull
    popd
}
