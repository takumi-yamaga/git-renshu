#! /bin/sh

if [ $# -lt 1 ]; then
	echo "==================="
	echo "----- ERROR!! -----"
	echo "==================="
	echo "There is no version number."
	echo "Please input!!"
	exit 1
elif [ $# -gt 1 ]; then
	echo "====================="
	echo "----- WARNING!! -----"
	echo "====================="
	echo "There is unnecessary input after version."
	echo "These inputs will be ignored."
fi

sed -i '' -E "s/ver\..*\..*\..*/ver\.$1/g" renshu.cc
