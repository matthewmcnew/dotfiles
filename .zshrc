# OH MY ZSH setup
source ~/workspace/dotfiles/ohmyz.zsh

#source <(antibody init)
#antibody bundle < ~/workspace/dotfiles/plugins.txt
source ~/.zsh_plugins.sh

## Config
for file in ~/workspace/dotfiles/zsh/*.zsh; do
    source "$file"
done

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
