#!/bin/sh
echo Initializing eclipse projects..
git submodule init
git submodule update
cat tree-view-list-android/.project | sed -e s/tree-view-list-android/ActionBarSherlock/ > ActionBarSherlock/library/.project
cp tree-view-list-android/.classpath ActionBarSherlock/library/.classpath