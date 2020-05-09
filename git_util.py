#!/usr/bin/python3

''' Utility functions for git from command line '''

from github import Github
import json
import sys
def create(file_name):
    ''' Function to create repo on github '''
    with open("/home/rahul/.env","r") as file: 
        # Storing the token in .env file in home folder
        token = json.loads(file.read())['github-auth-token']
    print(token)
    g = Github(token)
    user = g.get_user()
    print(user)
    try:
        user.create_repo(file_name)
    except Exception as ex:
        template = "An exception of type {0} occurred. Arguments:\n{1!r}"
        message = template.format(type(ex).__name__, ex.args)
        print(message)
    

if __name__ == "__main__":
    repo_name = sys.argv[1]
    create(repo_name)


