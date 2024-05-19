#!/usr/bin/env sh

function is_binary_exists() {
  if [ `which $1` ];
  then
    return 0
  else
    return 1
  fi
}

function if_binary_exists_do() {
    if is_binary_exists $1;
    then
      eval "$2"
    fi
}

function verify() {
  if is_binary_exists $1;
  then
    echo $1" exists"
  else
    echo $1" DOES NOT exists"
  fi
}

if [[ $DEBUG == "YES" ]]
then
  echo
  verify ls
  verify gs
  verify non-existing-binary
fi;