#!/bin/bash

argv=("$@")
num="$(($# - 1))"


for i in $( eval echo {0..$num} )
do
        echo "${argv[i]}"

        read reponse

        echo $reponse 1>&2

done

echo $reponse
