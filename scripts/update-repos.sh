#!/bin/sh

printf '\n'

echo 'Running git pull in all cloned repos at ~/Projects...'

printf '\n'

cd ~/Projects
ls | xargs -I{} git -C {} pull

printf '\n'

echo 'Done.'

