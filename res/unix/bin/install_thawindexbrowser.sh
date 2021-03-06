#!/bin/sh

. "$HOME/_install_toSource.sh" || exit 0
cd "$INSTALL_PATH"
if test ! -d plugins; then mkdir plugins; fi 2>&1 >/dev/null

	echo "Downloading the ThawIndexBrowser plugin"
	if test ! -f offline
	then
		java $JOPTS -jar bin/sha1test.jar ThawIndexBrowser.jar plugins "$CAFILE" >/dev/null 2>&1
	fi
	rm -f thawindexbrowser
