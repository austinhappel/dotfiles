#!bin/sh
# Updates current branch with latest from develop
# 
# @author: Marcus Melder

SOURCE_BRANCH="master";
SUCCESS=false;

git_branch () {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

update_git () {
    current_branch=$(git_branch)

    git checkout $SOURCE_BRANCH
    git pull origin $SOURCE_BRANCH

    if [ "$current_branch" != $SOURCE_BRANCH ]; then 
        git checkout $current_branch
        git merge $SOURCE_BRANCH
    fi
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
