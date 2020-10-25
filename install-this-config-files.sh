#!/bin/env sh

for file in $(git ls-files); do 
    if [ $file != 'README.md' ] && [ $file != 'LICENSE' ] && [ $file != '.gitignore' ]; then 
        install -D $file ~/$file 
    fi; 
done;

echo 'All config files installed';

