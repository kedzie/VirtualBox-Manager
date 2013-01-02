#!/bin/sh

echo Using configuration file: $PROJECT_FILE

ln -f -s .project.$1 ./VBox-Instrumentation/.project
ln -f -s .classpath.$1 ./VBox-Instrumentation/.classpath

ln -f -s .project.$1 ./VBoxManager/.project
ln -f -s .classpath.$1 ./VBoxManager/.classpath

ln -f -s .project.$1 ./ActionBarSherlock/library/.project
ln -f -s .classpath.$1 ./ActionBarSherlock/library/.classpath

ln -f -s .project.$1 ./tree-view-list-android/.project
ln -f -s .classpath.$1 ./tree-view-list-android/.classpath
