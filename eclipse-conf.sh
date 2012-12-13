#!/bin/sh

PROJECT_FILE=.project.$1
echo Using configuration file: $PROJECT_FILE

ln -f -s $PROJECT_FILE ./VBox-Instrumentation/.project
ln -f -s $PROJECT_FILE ./VBoxManager/.project
ln -f -s $PROJECT_FILE ./ActionBarSherlock/library/.project
ln -f -s $PROJECT_FILE ./tree-view-list-android/.project
