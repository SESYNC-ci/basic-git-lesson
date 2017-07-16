#!/bin/sh

## Configure git

git config --global user.name ...
git config --global user.email ...

## Change the "origin" remote URL and push
git remote set-url origin ...
git push --all
