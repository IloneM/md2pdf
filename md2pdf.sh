#!/bin/bash
options="-V geometry:margin=1in -o --latex-engine=xelatex"
if [[ $# -gt 1 ]]; then
		$(pandoc "$1" $options -o "$2")
elif [[ $# -gt 0 ]]; then
		ext1=$(echo "$1" | grep -oP "[^\.]+$")
		$(pandoc "$1" $options -o "${1/%$ext1/pdf}")
else
		(>&2 echo "You did not provide any parameter")
fi
