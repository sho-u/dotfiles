
[ -f ~/.environment.zsh ] && . ~/.environment.zsh

# ## zplug from
# source ~/.zplug/init.zsh
#
# zplug "zsh-users/zsh-autosuggestions"
# zplug "zsh-users/zsh-syntax-highlighting", defer:2
# zplug "zsh-users/zsh-completions"
# zplug "zsh-users/zsh-history-substring-search"
#
# zplug "eendroroy/alien", as:theme
#
#
# # 未インストール項目をインストールする
# if ! zplug check --verbose; then
#     printf "Install? [y/N]: "
#     if read -q; then
#         echo; zplug install
#     fi
# fi
#
# # コマンドをリンクして、PATH に追加し、プラグインは読み込む
# zplug load --verbose
# ## zplug to
#



### Added by Zplugin's installer
source "$HOME/.zsh/.zplugin/bin/zplugin.zsh"
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin installer's chunk
zplugin light zsh-users/zsh-autosuggestions
zplugin light zdharma/fast-syntax-highlighting
zplugin light zsh-users/zsh-completions
zplugin ice pick"async.zsh" src"pure.zsh"; zplugin light sindresorhus/pure
# zplugin light romkatv/powerlevel10k
# zplugin snippet https://github.com/sainnhe/dotfiles/blob/master/.zsh-theme-gruvbox-material-dark


## plugin settings from
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#808080,bg=bold,underline"
ZSH_AUTOSUGGEST_STRATEGY=(match_prev_cmd)
#
# export ALIEN_THEME="bnw"
# ## plugin settings to


## Completion configuration
autoload -U compinit
compinit

if which tmux 2>&1 >/dev/null; then
    #if not inside a tmux session, and if no session is started, start a new session
    test -z "$TMUX" && (tmux attach || tmux new-session)
fi
