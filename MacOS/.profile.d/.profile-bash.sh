# [Bash]
export BASH_SILENCE_DEPRECATION_WARNING=1

# Bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Powerline shell
function _update_ps1() {
    PS1=$(powerline-shell $?)
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
     PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
