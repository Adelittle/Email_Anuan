#!/bin/bash
#Email
LISTS=$1

if [[ ! -f ${LISTS} ]]; then
	echo "ERROR: ${LISTS} not found"
	echo "usage: bash $0 list.txt"
	exit
fi

for SITE in $(cat $LISTS);
do
    if [[ $(echo "${SITE}" ) =~ 'yahoo' ]]; then
		echo "[+] Yahoo: ${SITE}"
        echo "${SITE}" > yahoo.txt
    fi

    if [[ $(echo "${SITE}" ) =~ 'google' ]]; then
		echo "[+] Google: ${SITE}"
        echo "${SITE}" > google.txt
	else :
	fi
    
done
