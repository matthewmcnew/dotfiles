kon() {
    prompt_k8s() {
      if [[ $(history -15) =~ "kail|helm" ]]; then
        color=cyan
        prompt_segment $PRIMARY_FG $color
        print -Pn " $(dirname $ZSH_KUBECTL_PROMPT) "
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
