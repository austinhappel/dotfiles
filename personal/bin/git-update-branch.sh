#!/bin/sh
# Updates current branch with latest from develop
# 
# @author: Marcus Melder
# @author: Austin Happel
#
# TODO: add a flag for selecting the remote to pull from
# 

SOURCE_BRANCH="master"

SUCCESS=false;

git_branch () {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

update_git () {
    current_branch=$(git_branch)
    echo "Updating [${current_branch}] branch with latest pull from [${SOURCE_BRANCH}] branch."
    echo "Are you sure? ([y]/n)"
    read accept

    if [ "$accept" = "n" ] ; then
        echo "aborting"
        exit;
    else
        git checkout $SOURCE_BRANCH
        git pull origin $SOURCE_BRANCH

        if [ "$current_branch" != $SOURCE_BRANCH ]; then 
            git checkout $current_branch
            git merge $SOURCE_BRANCH
        fi
    fi
    exit;
}

while getopts ":s:" option
do
        if [ "${option}" = "s" ] ; then
            SOURCE_BRANCH=${OPTARG};
            SUCCESS=true;
            update_git;
        fi
done

if [ $# = 0 ] ; then
    # if no -s flag is supplied, try to glean default branch from .git/HEAD if available.
    if [ `cat .git/HEAD | sed 's/ref\: refs\/heads\///' 2>/dev/null` ] ; then
        SOURCE_BRANCH=`cat .git/HEAD | sed 's/ref\: refs\/heads\///'`;
    fi

    update_git;
    SUCCESS=true;
fi

if [ $SUCCESS != true ] ; then
    echo "Invalid argument.";
    echo "flags:";
    echo "    -s: name of the source branch from which to update your current branch.";
    echo "usage: ";
    echo "    git-update-branch -s <source branch to update from> ";
fi
