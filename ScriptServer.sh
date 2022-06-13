#!/bin/bash

while read user
do
        exists=$(grep -c "^$user:" /etc/passwd) #Check if the user exist
        if [ $exists -eq 0 ]; then
                `useradd -m -s /bin/bash $user` # Add user
                sh -c 'echo '$user':'$user' | chpasswd' # Change the password
                echo "the user $user have been added"
        else
                echo "The user $user exists"
fi
done

