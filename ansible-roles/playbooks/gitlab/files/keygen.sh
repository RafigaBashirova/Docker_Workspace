#!/bin/bash
USERNAME=root
HOSTS="ansible-h ansible-h2"
for HOSTNAME in ${HOSTS} ; do
	sshpass -p root ssh-copy-id root@${HOSTNAME}	
done

