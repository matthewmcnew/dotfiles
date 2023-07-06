kon() {
    prompt_k8s() {
      if [[ $(history -15) =~ "kube|kail|helm|k" ]]; then
        color=cyan
        prompt_segment $PRIMARY_FG $color
        print -Pn "⚙ $(dirname $ZSH_KUBECTL_PROMPT) "
      fi
    }

    PROMPT_SEGMENT_POSITION=3 PROMPT_SEGMENT_NAME="prompt_k8s";\
    AGNOSTER_PROMPT_SEGMENTS=("${AGNOSTER_PROMPT_SEGMENTS[@]:0:$PROMPT_SEGMENT_POSITION-1}" "$PROMPT_SEGMENT_NAME" "${AGNOSTER_PROMPT_SEGMENTS[@]:$PROMPT_SEGMENT_POSITION-1}");\
    unset PROMPT_SEGMENT_POSITION PROMPT_SEGMENT_NAME
}

koff() {
    AGNOSTER_PROMPT_SEGMENTS[3]=
}

kon

alias k="kubectl"
alias kc="kubectx"
alias ke="kubens"

install_cache_builder() {
  FILE="kubectl-fzf_darwin_amd64.tar.gz"

  cd /tmp
  wget "https://github.com/bonnefoa/kubectl-fzf/releases/latest/download/$FILE"
  tar -xf $FILE
  mkdir -p ~/local/bin/
  install cache_builder ~/local/bin/cache_builder
}


export PATH=$PATH:~/local/bin/
source <(kubectl completion zsh)
source ~/workspace/dotfiles/customplugin/kubectl.plugin.zsh
zstyle ':completion:*' matcher-list 'r:|=*'