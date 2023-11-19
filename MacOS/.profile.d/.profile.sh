export BASH_SILENCE_DEPRECATION_WARNING=1

# Bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# For Kubernetes => Minikube => hyperkit (enable qcow)
# OPAM (https://opam.ocaml.org/) is the OCaml Package Manager
# opam configuration
test -r /Users/nicolas/.opam/opam-init/init.sh && . /Users/nicolas/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

# Powerline shell
function _update_ps1() {
    PS1=$(powerline-shell $?)
}
#export PS2="$(powerline shell left)"
#THEME_PROMPT_SEPARATOR=""
#THEME_PROMPT_TERMINAL=" » "

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
     PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

# Aliases
alias ls='lsd'
alias ll='lsd -lFtr'
alias la='lsd -alFtr'
alias nicolas_list_jdks='/usr/libexec/java_home --verbose'
alias nicolas_npx_envinfo='npx envinfo --preset jest'
alias nicolas_sha256sum='shasum -a 256 $1 --check sha256sums.txt 2>/dev/null | grep $1'
alias wireshark_as_root='sudo /Applications/InstalledApps/Security/Wireshark.app/Contents/MacOS/Wireshark &'

# [JDK]     --------------------------------------------
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/amazon-corretto-11.jdk/Contents/Home
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/amazon-corretto-17.jdk/Contents/Home
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-11.jdk/Contents/Home
# => MANAGED BY 'jenv'

# [jenv]
# To enable shims and autocompletion:
eval "$(jenv init -)"

# To use Homebrew's directories rather than ~/.jenv add to your profile:
#export JENV_ROOT=/usr/local/opt/jenv

# [Java Decompiler]
alias nicolas_java_decompiler='java -jar /Applications/InstalledApps/Development/jd-gui-1.6.6.jar'
alias nicolas_jd=nicolas_java_decompiler

# [Go]
export GO_DIRECTORY='/usr/local/go'
export PATH=$GO_DIRECTORY/bin:$PATH

# [Maven]
MVN_HOME=/Applications/InstalledApps/Development/apache-maven-3.8.4
export PATH=$MVN_HOME/bin:$PATH

# [Gradle]
GRADLE_HOME=/Applications/InstalledApps/Development/gradle-7.5.1
export PATH=$GRADLE_HOME/bin:$PATH

# [BREW]    --------------------------------------------
# Load Brew
eval "$(/opt/homebrew/bin/brew shellenv)"
# Rbenv (for Ruby)
eval "$(rbenv init - zsh)"
# Jekyll
export PATH="/usr/local/opt/ruby/bin:/usr/local/lib/ruby/gems/3.0.0/bin:$PATH"

# [NVM]    ---------------------------------------------
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# [ANDROID] --------------------------------------------
export ANDROID_HOME='/Users/nicolas/Library/Android/sdk'
#export ANDROID_HOME=~/Library/Android/sdk
export ANDROID_SDK_ROOT=~/Library/Android/sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/tools
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/bin
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools

# [Ansible (Python PIP directory]
export PYTHON_3_DIRECTORY='~/Library/Python/3.11'
export PATH=$PATH:$PYTHON_3_DIRECTORY/bin
#alias ansible-playbook='$PYTHON_3_DIRECTORY/bin/ansible-playbook'

# [Kubernetes]
alias k='kubectl'
# Bash completion for "k" as "kubecl"
complete -o default -F __start_kubectl k


# [ FOR Linkcy ]
export ENT_USERNAME=linkcy
export ENT_TOKEN=1xGY32LUaBxV8RvUfA55



alias nicolas_serve_redoc_partner='redoc-cli serve http://localhost:8080/v3/api-docs/partner  --ssr --watch -p 8091'
alias nicolas_serve_redoc_internal='redoc-cli serve http://localhost:8080/v3/api-docs/internal  --ssr --watch -p 8092'

alias SSH_connect_Linkcy_Paynovate_Proxy='ssh -i ~/.ssh/paynovateProxy.pem admin@13.39.147.239'
alias SSH_connect_Linkcy_Lotus='ssh -i ~/.ssh/lotus.pem admin@15.188.54.100'
alias SSH_connect_Linkcy_GitLabRunner='ssh -i ~/.ssh/GitLabRunner.pem admin@35.180.66.45'
alias SSH_connect_Linkcy_Website='ssh -i ~/.ssh/websiteAkrolab ec2-user@13.39.86.187'

alias SSH_connect_Other_mood_lentilles_fr='ssh -i ~/.ssh/id_rsa_mood_lentilles ubuntu@52.47.156.249'

#alias SSH_connect_Local_Neptune='ssh -i ~/.ssh/id_rsa_nicolas_Neptune nicolas@192.168.50.102'
alias SSH_connect_Local_Chicago='ssh -i ~/.ssh/id_rsa_nicolas_Chicago nicolas@Chicago'
#alias SSH_connect_Local_Jupiter='ssh -i ~/.ssh/id_rsa_nicolas_Jupiter nicolas@192.168.50.104'
alias SSH_connect_Local_LosAngeles='ssh -i ~/.ssh/id_rsa_nicolas_LosAngeles nicolas@LosAngeles'
alias SSH_connect_Local_NewYork='ssh -i ~/.ssh/id_rsa_nicolas_NewYork nicolas@NewYork'
# Uranus TODO (à renommer ?)

# ~/.ssh/id_rsa_nicolas_Jupiter

alias nicolas_weather='curl -sL wttr.in/Suresnes'
