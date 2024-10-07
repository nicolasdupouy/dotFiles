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

# Common profile
SPECIFIC_PROFILE_DIRECTORY=$(find_profile_directory)
SPECIFIC_PROFILE_NAME="MacOS"
COMMON_PROFILE_DIRECTORY=`realpath ${SPECIFIC_PROFILE_DIRECTORY}/../../Common/.profile.d`
DEBUG=NO # YES or !YES
source ${COMMON_PROFILE_DIRECTORY}/.profile.sh $COMMON_PROFILE_DIRECTORY $SPECIFIC_PROFILE_DIRECTORY $SPECIFIC_PROFILE_NAME $DEBUG

# MacOS profiles
# - System
source ${SPECIFIC_PROFILE_DIRECTORY}/.profile-brew.sh
source ${SPECIFIC_PROFILE_DIRECTORY}/.profile-bash.sh

# - Languages
source ${SPECIFIC_PROFILE_DIRECTORY}/.profile-JVM.sh
source ${SPECIFIC_PROFILE_DIRECTORY}/.profile-Python.sh
source ${SPECIFIC_PROFILE_DIRECTORY}/.profile-Go.sh
source ${SPECIFIC_PROFILE_DIRECTORY}/.profile-Ruby.sh
source ${SPECIFIC_PROFILE_DIRECTORY}/.profile-Node.js.sh

# - Misc
source ${SPECIFIC_PROFILE_DIRECTORY}/.profile-Infrastructure.sh
source ${SPECIFIC_PROFILE_DIRECTORY}/.profile-Android.sh
source ${SPECIFIC_PROFILE_DIRECTORY}/.profile-Security.sh

source ${SPECIFIC_PROFILE_DIRECTORY}/.profile-Work.sh
