# Forked from https://github.com/robbyrussell/oh-my-zsh/blob/master/themes/arrow.zsh-theme

git_describe() {
    echo $(git describe --tag 2> /dev/null)
}

my_git_prompt_info() {
    prompt=$(git_prompt_info)
    if [ ! -z "$prompt" ]; then
        echo "$(git_describe) ($(git_prompt_info))"
    fi
}

if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="yellow"; fi

PROMPT='%{$fg[$NCOLOR]%}%c ➤ %{$reset_color%}'
RPROMPT='%{$fg[$NCOLOR]%}%p$(my_git_prompt_info)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# See http://geoff.greer.fm/lscolors/
export LSCOLORS="exfxcxdxbxbxbxbxbxbxbx"
export LS_COLORS="di=34;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=31;40:cd=31;40:su=31;40:sg=31;40:tw=31;40:ow=31;40:"
