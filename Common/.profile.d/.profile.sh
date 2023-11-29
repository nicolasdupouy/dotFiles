COMMON_PROFILE_DIRECTORY=$1
SPECIFIC_PROFILE_DIRECTORY=$2
SPECIFIC_PROFILE_NAME=$3
DEBUG=$4

if [[ $DEBUG == "YES" ]]
then
  echo "Common Profile directory: $1"
  echo "Specific Profile directory: $2"
  echo "Specific profile name: $3"
fi;

source ${COMMON_PROFILE_DIRECTORY}/.profile-Misc.sh
