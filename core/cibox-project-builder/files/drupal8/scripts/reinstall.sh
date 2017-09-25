#!/bin/sh

if [ "$1" = "--windows" ]; then
    time ansible-playbook -vvvv reinstall.yml -i 'localhost,' --connection=local --extra-vars "is_windows=true"
elif [ "$1" = "--docksal" ]; then
    time fin exec ansible-playbook -vvvv reinstall.yml -i 'localhost,' --connection=local
else
    time ansible-playbook -vvvv reinstall.yml -i 'localhost,' --connection=local
fi