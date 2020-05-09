# Project to create github repository from the terminal

* The repository will be created at /home/user/Projects/ directory (Instead of user add name of user directory)

* The github personal access token is to be obtained from the developer settings in [github.com](https://github.com/settings/tokens)   and to be stored in .env file in the home folder in json format.

* Token to be named 'github-auth-token' or change it in the python code

* To use command universally make a soft link using ln in /usr/bin/

``` bash
sudo ln git_util.py /usr/bin/git_util.py
sudo ln create_repo.sh /usr/bin/create_repo
```

You can also copy and paste the files there

## Note

--> If the user is not getting authenticated in the get_user() function after using the personal access token to authenticate add the following to to __repr__ to the AuthenticatedUser class in [AuthenticatedUser.py](https://github.com/PyGithub/PyGithub/blob/master/github/AuthenticatedUser.py) in the locale site file for PyGithub.<br>
path:/home/rahul/.local/lib/python3.8/site-packages/github/AuthenticatedUser.py:<br>
replace 'rahul' with name of your user folder.

```python
class AuthenticatedUser(github.GithubObject.CompletableGithubObject):
    def __repr__(self):
        self._completeIfNotSet(self._login) #Add this line
        return self.get__repr__({"login": self._login.value})
```

