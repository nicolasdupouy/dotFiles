function find_profile_directory() {
  SOURCE=${BASH_SOURCE[0]}
  while [ -L "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
    TARGET=$(readlink "$SOURCE")
    if [[ $TARGET == /* ]]; then
      #echo "SOURCE '$SOURCE' is an absolute symlink to '$TARGET'"
      SOURCE=$TARGET
    else
      DIR=$( dirname "$SOURCE" )
      #echo "SOURCE '$SOURCE' is a relative symlink to '$TARGET' (relative to '$DIR')"
      SOURCE=$DIR/$TARGET # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
    fi
  done
  #echo "SOURCE is '$SOURCE'"
  RDIR=$( dirname "$SOURCE" )
  DIR=$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )
  #if [ "$DIR" != "$RDIR" ]; then
    #echo "DIR '$RDIR' resolves to '$DIR'"
  #fi
  #echo "DIR is '$DIR'"

  local return_value=$DIR
  echo "$return_value"
}

PROFILE_DIRECTORY=$(find_profile_directory)
echo "Profile directory: $PROFILE_DIRECTORY"

source ${PROFILE_DIRECTORY}/.profile-tools-brew.sh
source ${PROFILE_DIRECTORY}/.profile-bash.sh
source ${PROFILE_DIRECTORY}/JVM/.profile-languages-JVM.sh
source ${PROFILE_DIRECTORY}/JVM/.profile-tools-JVM.sh
source ${PROFILE_DIRECTORY}/JVM/.profile-aliases-JVM.sh
source ${PROFILE_DIRECTORY}/.profile-languages-Go.sh
source ${PROFILE_DIRECTORY}/.profile-languages-Ruby.sh

# For Kubernetes => Minikube => hyperkit (enable qcow)
# OPAM (https://opam.ocaml.org/) is the OCaml Package Manager
# opam configuration
test -r /Users/nicolas/.opam/opam-init/init.sh && . /Users/nicolas/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

# Aliases
alias ls='lsd'
alias ll='lsd -lFtr'
alias la='lsd -alFtr'
alias nicolas_npx_envinfo='npx envinfo --preset jest'
alias nicolas_sha256sum='shasum -a 256 $1 --check sha256sums.txt 2>/dev/null | grep $1'
alias wireshark_as_root='sudo /Applications/InstalledApps/Security/Wireshark.app/Contents/MacOS/Wireshark &'

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
