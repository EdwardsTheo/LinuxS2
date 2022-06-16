#!/bin/bash

argv=("$@") #Création d'une liste avec les arguments passés en paramètres du script
num="$(($# - 1))" # Compte le nombre d'arguments


for i in $( eval echo {0..$num} ) 
do
        echo "${argv[i]}" # Envoie l'user au serveur
 
        read reponse # Lit la réponse du serveur

        echo $reponse 1>&2 # L'affiche à l'utilisateur

done

echo $reponse
