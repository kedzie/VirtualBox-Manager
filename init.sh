#!/bin/sh
echo Initializing eclipse projects with branch [$1]..
git submodule init
git submodule update
cat tree-view-list-android/.project | sed -e s/tree-view-list-android/ActionBarSherlock/ > ActionBarSherlock/library/.project
cp tree-view-list-android/.classpath ActionBarSherlock/library/.classpath
git submodule foreach git checkout $1
