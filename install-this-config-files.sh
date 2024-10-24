#!/bin/env sh

for file in $(git ls-files); do 
    if [ $file != 'README.md' ] && [ $file != 'LICENSE' ] && [ $file != '.gitignore' ]; then 
        install -D $file ~/$file 
    fi; 
done;

if command -v git &> /dev/null && command -v base64 &> /dev/null; then
    git config --global user.name terremoth
    git config --global user.email $(echo -n 'ZHV0cmEuYXN0cm9AZ21haWwuY29t' | base64 -d)
fi

echo 'All config files installed';

