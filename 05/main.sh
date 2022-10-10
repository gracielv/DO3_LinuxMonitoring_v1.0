#!/bin/bash
source output.sh

function check()
{
    if [ $# -eq 1 ]
    then
        if [[ $1 =~ /$ ]]
        then
            if [[ -d "$1" ]]
            then
                output "$1"
            else
                echo "Нет такой директории"
            fi
        else
            echo "Должна быть директория (путь заканчивается на '/')"
            exit 1
        fi
    else
        echo "Должен быть один параметр"
        exit 1
    fi
}

check "$@"
