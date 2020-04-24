#!/bin/bash

echo "Symlink the git-authors file to .git-authors..."
ln -sf ${HOME}/workspace/networking-workspace/git-authors ${HOME}/.git-authors

echo "updating all git repos to use 'git co-author'"
git solo as # HACK: if not set to anything git duet fails in the following commands
export GIT_DUET_CO_AUTHORED_BY=1
find ~/workspace/ -type d -name '.git' -exec sh -c 'cd {} && cd .. && git init' \;
