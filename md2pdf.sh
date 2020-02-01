#!/bin/bash
if [[ $# -gt 1 ]]; then
		pandoc "$1" -o --latex-engine=xelatex -o "$2"
elif [[ $# -gt 0 ]]; then
		ext1=$(echo "$1" | grep -oP "[^\.]+$")
		pandoc "$1" -o --latex-engine=xelatex -o "${1/%$ext1/pdf}"
else
		(>&2 echo "You did not provide any parameter")
fi
