#!/bin/sh
echo Initializing eclipse projects with branch [$1]..
git submodule init
git submodule update
cat tree-view-list-android/.project.mvn | sed -e s/tree-view-list-android/ActionBarSherlock/ > ActionBarSherlock/library/.project.mvn
cat tree-view-list-android/.project.eclipse | sed -e s/tree-view-list-android/ActionBarSherlock/ > ActionBarSherlock/library/.project.eclipse
cp tree-view-list-android/.classpath ActionBarSherlock/library/.classpath
./eclipse-conf.sh mvn
git submodule foreach git checkout $1
