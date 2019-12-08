# alias
[ -f ~/.alias.sh ] && . ~/.alias.sh

# Customize to your needs...
# HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
bindkey -e

# command miss
setopt correct

# 補完で大文字にもマッチ
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'


## zplugin
## Added by Zplugin's installer
source "$ZDOTDIR/.zplugin/bin/zplugin.zsh"
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
## End of Zplugin installer's chunk
zplugin ice wait'!0';zplugin light zsh-users/zsh-autosuggestions
zplugin ice wait'!0';zplugin light zdharma/fast-syntax-highlighting
zplugin ice wait'!0';zplugin load zsh-users/zsh-completions
zplugin ice pick"async.zsh" src"pure.zsh"; zplugin light sindresorhus/pure


ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#808080,bg=bold,underline"
ZSH_AUTOSUGGEST_STRATEGY=(match_prev_cmd)


## Completion configuration
autoload -Uz compinit && compinit

## profile
# if (which zprof > /dev/null 2>&1) ;then
#   zprof
# fi
