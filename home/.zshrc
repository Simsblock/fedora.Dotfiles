# ------------------------------- History -------------------------------
HISTFILE=~/.zsh/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS

# ------------------------------- uuuuh im clueless -------------------------------
setopt beep extendedglob
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/simsblock/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall

# ------------------------------- Plugins -------------------------------
# Auto suggestions
source ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '^ ' autosuggest-accept
bindkey '^X' autosuggest-clear
ZSH_AUTOSUGGEST_HISTORY_IGNORE="(rm *|sudo *|kill *|git push --force*|git clone*|*password*)"

# Completions
source ~/.zsh/plugins/zsh-completions/zsh-completions.plugin.zsh

# Syntax Highlighting
source ~/.zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

# ------------------------------- Aliases -------------------------------
alias feesh="
echo '                                       ███'
echo '                                       █████████    '
echo '                ⊹˚.‧⁺                   ███████████'
echo '                                         ███    ██████'
echo '                                          ███      █████                *rawr bloop bloop*'
echo '                                          ███        █████'
echo '   ██████████                            ████          ██████'
echo '    ██████████████                    █████               ████████'
echo '      █████   ██████         ████████████                    ███████████'
echo '        ████      ███████████████████            ██ █ ██           ███████████'
echo '          ████      ███                           ██████                 █████'
echo '            ███   ████████████      ██            ██████              ███████'
echo '            ███  ████ █████████  █████ ███       ██ █ █       ████████████'
echo '            ███ ███            █████ █████ █████████████    █████████'
echo '            ██████             █████████       ██████████  ███'
echo '           █████                    ██                 ██████         ⊹˚.‧⁺'
echo '           ███                                        ██████'
echo '                                                      ████'
echo '                          ⊹˚.‧⁺                            '
"

# ------------------------------- Starship -------------------------------
export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init zsh)"
