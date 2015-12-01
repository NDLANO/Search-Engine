#!/bin/sh

source ./build.properties

PROJECT="$NDLAOrganization/search-engine"
VER="v$NDLAComponentVersion"
GIT_HASH=`git log --pretty=format:%h -n 1`

VERSION=${VER}_${GIT_HASH}

docker build -t $PROJECT:$VERSION .
docker tag -f $PROJECT:$VERSION $PROJECT:latest
