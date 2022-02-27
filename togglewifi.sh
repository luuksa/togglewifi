#!/bin/bash

if [[ "$(connmanctl state | head -n -2)" == "  State = idle" ]]
then
	connmanctl enable wifi
else
	connmanctl disable wifi
fi

exit 0
