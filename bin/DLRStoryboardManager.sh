#!/bin/bash
#
#  DLRStoryboardManager.sh
#  DLRUIKit
#
#  Created by Nate Walczak on 2/12/15.
#  Copyright (c) 2015 Detroit Labs, LLC. All rights reserved.
#

display_usage() {
  echo -e "usage: `basename $0` storyboard [target]"
  echo -e "usage: `basename $0` directory [target]"
  echo -e "example: `basename $0` Project/Main.storyboard"
  echo -e "example: `basename $0` Project Project/"
}

if [[ ( $# == "--help") || ( $# == "-h" ) ]]; then
  display_usage
  exit 1
fi

if [[ ( $# -lt 1 ) || ( $# -gt 2 ) ]]; then
  display_usage
  exit 2
fi

if [[ $# -eq 2  ]]; then
  if [ ! -d "${2}" ]; then
    echo -e "`basename $0`: $2: No such file or directory"
    exit 3
  fi
fi

process_storyboard() {

  storyboard=$1

  filename=`basename "${storyboard}"`
  name="${filename%.*}"

  xslt="`dirname $0`/resources/DLRStoryboardManager.xsl"

  if [[ $# -ge 2 ]]; then
    output="$2/DLRStoryboardManager+${name}.m"
  else
    output="`dirname $storyboard`/DLRStoryboardManager+${name}.m"
  fi

  [ -f "${output}" ] && rm "${output}"

  xsltproc -o "${output}" --stringparam storyboard "${name}" "${xslt}" "${storyboard}"

}

process_directory() {

  if [[ $# -ge 2 ]]; then

    target_directory=$2
    find $1 -iname '*.storyboard' -exec "$0" {} "${target_directory}" \;

  else

    find $1 -iname '*.storyboard' -exec "$0" {} \;

  fi

}

if [ -d "${1}" ]; then

  process_directory "$@"

elif [ -f "${1}" ]; then

  process_storyboard "$@"

else

  echo -e "`basename $0`: cannot open \`$1' (No such file or directory)"
  exit 10

fi
