#!/bin/sh

set -e

if [ ! -z "`git tag --contains HEAD | grep linux`" ]
then
    echo "Oops, looks like this version is already tagged:"
    git tag --contains HEAD
    exit 1
fi

if [ ! -z "`git diff --name-only`" ]
then
    echo "Oops, looks like you have uncommitted changes:"
    git status
    exit 1
fi

echo "Running linux tests."
./linux-test.sh

DATE=`date +"%F_%T" | sed 's/:/_/g'`
TAG="linux.$DATE"

echo "Linux tests passed."
echo "Collecting platform information..."

rm -f tagmessage
echo "Linux tests passed. " > tagmessage
./linux-info.sh | tee --append tagmessage

echo "Adding Git tag."
git tag -a $TAG -F tagmessage
rm tagmessage



