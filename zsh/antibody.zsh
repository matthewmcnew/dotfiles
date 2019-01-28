upgrade_antibody(){
  antibody bundle <~/workspace/dotfiles/plugins.txt >~/.zsh_plugins.sh
  antibody update
  source ~/.zshrc
}
