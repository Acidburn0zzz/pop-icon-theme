#!/usr/bin/env bash
# This script deletes *.svg files from the directory.

set -eo pipefail

SCRIPT_DIR=$(dirname "$0")

find "$SCRIPT_DIR/ePapirus" \
	"$SCRIPT_DIR/Papirus" \
	"$SCRIPT_DIR/Papirus-Dark" \
	"$SCRIPT_DIR/Papirus-Light" -name '*.svg' -print

echo -n "Do you want to delete the files? [y/N]: "; read REPLY

case "$REPLY" in
	[Yy]*)
		find "$SCRIPT_DIR/ePapirus" \
			"$SCRIPT_DIR/Papirus" \
			"$SCRIPT_DIR/Papirus-Dark" \
			"$SCRIPT_DIR/Papirus-Light" -name '*.svg' -delete
		;;
	*)
		echo "Abort."
		;;
esac
