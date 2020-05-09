#!/usr/bin/bash

create() {
    root=$(pwd)
    cd /home/rahul/Documents/Projects/
    mkdir $1 && cd $1
    git init
    python3 git_util.py $1
    touch README.md
    git add .
    git commit -m "Initial Commit"
    git remote add origin git@github.com:RahulKeluskar/$1.git
    code ../$1/
    cd $root
    
}

create $1