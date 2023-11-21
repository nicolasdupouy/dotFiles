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

source ${PROFILE_DIRECTORY}/.profile-brew.sh
source ${PROFILE_DIRECTORY}/.profile-bash.sh
source ${PROFILE_DIRECTORY}/.profile-JVM.sh
source ${PROFILE_DIRECTORY}/.profile-Go.sh
source ${PROFILE_DIRECTORY}/.profile-Ruby.sh
source ${PROFILE_DIRECTORY}/.profile-Node.js.sh
source ${PROFILE_DIRECTORY}/.profile-Infrastructure.sh
source ${PROFILE_DIRECTORY}/.profile-Android.sh
source ${PROFILE_DIRECTORY}/.profile-Work.sh

# Aliases
alias ls='lsd'
alias ll='lsd -lFtr'
alias la='lsd -alFtr'
alias nicolas_sha256sum='shasum -a 256 $1 --check sha256sums.txt 2>/dev/null | grep $1'
alias wireshark_as_root='sudo /Applications/InstalledApps/Security/Wireshark.app/Contents/MacOS/Wireshark &'

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

alias nicolas_weather='curl -sL wttr.in/Suresnes'
