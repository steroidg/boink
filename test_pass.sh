#!/bin/bash

PROG_NAME=`basename $0`

print_usage () {
	echo -e "Usage: ${PROG_NAME} <user> <host_name> <passwd_list>\n";
	exit 1;
};

# main () {
SSH_UNAME=$1
SSH_HOST_NAME=$2
PASSWD_FILE=$3
INTERVAL=5

if [ $# -lt 3 ]; then
	print_usage;
fi

if [ ! -f "${PASSWD_FILE}" ]; then
	echo "ERROR: Unable to locate the password list file ${PASSWD_FILE}.\n";
	exit 1
fi

for SSH_PASSWD in `cat ${PASSWD_FILE}`; do
	# StrictHostKeyChecking=no option is to avoid host key checking 
	# which is interactive.
	SSH_CMD="sshpass -p ${SSH_PASSWD} ssh ${SSH_UNAME}@${SSH_HOST_NAME} -o StrictHostKeyChecking=no";

	# Print out information about the current test
	echo "PASSWD: ${SSH_PASSWD}";
	echo "USER:   ${SSH_UNAME}";
	echo "HOST:   ${SSH_HOST_NAME}";
	echo "CMD:    ${SSH_CMD}";

	# Issuing commands, sleep is required because some servers will igrore
	# repeated attempts to connect
	${SSH_CMD};
	sleep ${INTERVAL};

	# New lines
	echo -e "\n\n";
done

# } # main
