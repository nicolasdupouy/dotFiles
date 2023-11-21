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
source ${PROFILE_DIRECTORY}/.profile-Security.sh

source ${PROFILE_DIRECTORY}/.profile-SSH.sh

source ${PROFILE_DIRECTORY}/.profile-Misc.sh
source ${PROFILE_DIRECTORY}/.profile-Work.sh

# Aliases
alias ls='lsd'
alias ll='lsd -lFtr'
alias la='lsd -alFtr'
