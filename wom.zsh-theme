# https://metin2.dev/topic/23262-how-to-coloring-your-shell-in-freebsd-zsh-csh/
# WoM2 oh my zsh theme by Shogun
if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="white"; fi

PROMPT='%{$fg[$NCOLOR]%}%B%n@%m%b%{$reset_color%}:%{$fg[green]%}%B%0d%b%{$reset_color%} $(git_prompt_info)%(!.#.$) '
RPROMPT='[%*]'

# git theming
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}(%{$fg_no_bold[yellow]%}%B"
ZSH_THEME_GIT_PROMPT_SUFFIX="%b%{$fg_bold[blue]%})%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%}▒~\~W"

# LS colors, made with https://geoff.greer.fm/lscolors/
export LSCOLORS="ExGxfxcxbxegehbhbgacad"
zstyle ':completion:*' list-colors "di=1;34:ln=35:so=32:pi=33:ex=1;31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"
