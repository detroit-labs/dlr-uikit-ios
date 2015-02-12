#!/bin/bash
#
#  DLRStoryboardManager.sh
#  DLRUIKit
#
#  Created by Nate Walczak on 2/12/15.
#  Copyright (c) 2015 Detroit Labs, LLC. All rights reserved.
#

display_usage() {
  echo -e "usage: `basename $0` storyboard"
  echo -e "example: `basename $0` Project/Main.storyboard"
}

if [[ ( $# == "--help") || ( $# == "-h" ) ]]; then
  display_usage
  exit 1
fi

if [  $# -ne 1 ]; then
  display_usage
  exit 2
fi

storyboard=$1

filename=`basename ${storyboard}`
name="${filename%.*}"

xslt="`dirname $0`/resources/DLRStoryboardManager.xsl"

output="`dirname $storyboard`/DLRStoryboardManager+${name}.m"

[ -f "${output}" ] && rm "${output}"

xsltproc -o "${output}" --stringparam storyboard "${name}" "${xslt}" "${storyboard}"
