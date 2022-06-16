#!/bin/bash

while read user # Ne s'arrête pas tant qu'il reçois des arguments
do
        exists=$(grep -c "^$user:" /etc/passwd) # Vérifie que l'user existe
        if [ $exists -eq 0 ]; then
                `useradd -m -s /bin/bash $user` # Ajoute l'user
                sh -c 'echo '$user':'$user' | chpasswd' # Change le mot de passe pour une connexion en ssh
                echo "the user $user have been added" # Réponse pour le client
        else
                echo "The user $user exists" # Réponse pour le client
fi
done

