#!/bin/sh
echo Initializing eclipse projects with branch [$1]..
git submodule init
git submodule update
cat tree-view-list-android/.project.mvn | sed -e s/tree-view-list-android/ABS/ > ActionBarSherlock/library/.project.mvn
cp tree-view-list-android/.classpath ActionBarSherlock/library/.classpath
./eclipse-conf.sh mvn
git checkout $1
cd VBoxManager
git checkout $1
cd ../VBox-Instrumentation
git checkout $1
cd .. 