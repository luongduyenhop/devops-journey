#!/bin/bash

USERNAME=$1

if id "$USERNAME" >/dev/null 2>&1; then
	echo "User $USERNAME exists"
else 
	echo "User $USERNAME doesn't exists"
fi

