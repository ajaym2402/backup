#!/usr/bin/env bash

function backup()
{
	rsync -a -e ssh --delete  $1 $2
}

print_usage() {
 echo "Usage: backup -b [SOURCE] [DESTINATION]"
}

while getopts 'b' flag; do
   case "${flag}" in
   b)
src=${2:-"a"}
dest=${3:-"c"}
       backup $src $dest
       shift 2
       ;;
   *)
print_usage
       exit 1
   esac
   shift
done