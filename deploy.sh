#!/bin/zsh
export GIT_SSH=~/.ssh/clearfickle.sh 

rm -rf public/*

hugo
cd public
git add -A
git cm -m 'rebuild'
git push origin master

cd ..
git checkout dev
git add public
git cm -am 'rebuild'
git push origin dev
