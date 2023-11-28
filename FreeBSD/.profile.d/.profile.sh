# Shell aliases
alias ls='lsd'
alias ll='lsd -lFtr'
alias la='lsd -alFtr'

# Powerline.bash
. ${HOME}/.config/powerline.bash
PROMPT_COMMAND='__update_ps1 $?'

# Icons in Terminal
source ~/.local/share/icons-in-terminal/icons_bash.sh
POWERLINE_ICONS=icons-in-terminal

# HSTR configuration - add this to ~/.bashrc
alias hh=hstr                    # hh to be alias for hstr
export HSTR_CONFIG=hicolor       # get more colors
shopt -s histappend              # append new history items to .bash_history
export HISTCONTROL=ignorespace   # leading space hides commands from history
export HISTFILESIZE=10000        # increase history file size (default is 500)
export HISTSIZE=${HISTFILESIZE}  # increase history size (default is 500)
# ensure synchronization between bash memory and history file
export PROMPT_COMMAND="history -a; history -n; ${PROMPT_COMMAND}"
# if this is interactive shell, then bind hstr to Ctrl-r (for Vi mode check doc)
if [[ $- =~ .*i.* ]]; then bind '"\C-r": "\C-a hstr -- \C-j"'; fi
# if this is interactive shell, then bind 'kill last command' to Ctrl-x k
if [[ $- =~ .*i.* ]]; then bind '"\C-xk": "\C-a hstr -k \C-j"'; fi

alias SSH_connect_Local_Chicago='ssh -i ~/.ssh/id_rsa_nicolas_NewYork_from_Miami nicolas@192.168.50.103'
