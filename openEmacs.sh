#!/bin/bash
export DISPLAY:=0

find_emacs_processes_cmd() {
    ps aux | grep -c "emacs $1"
}

number_of_processes=$(find_emacs_processes_cmd $1)

if [ $number_of_processes -lt 2 ]
then
    emacs $1
else
    echo "File $1 is already open in emacs"
fi
   

