#!/usr/bin/bash

create() {
    root=$(pwd)
    cd /home/rahul/Documents/Projects/
    mkdir $1 && cd $1
    git init
    git_util.py $1
    touch README.md
    git add .
    git commit -m "Initial Commit"
    git remote add origin git@github.com:RahulKeluskar/$1.git
    git push origin master
    cd .. && code $1/
    cd $root
    
}

create $1