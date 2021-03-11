---
layout: default
style: /css/static.css
---

---
## Introduction to using Git in JupyterLab

There are two ways to work with git projects in JupyterLab. You may either use the git extension for JupyterLab for a point-and-click interface, or issue git commands directly on the command line.

---

### Setup

As of October 1, 2020, all new repositories created on GitHub will have a default branch called `main`. Previously, the default name was `master`. The [change](https://github.com/github/renaming) was made to promote inclusive language in the version control world. SESYNC is planning to update the GitLab server to match this new default. However, the git client will still default to `master` if you create a repository locally, unless you configure it as described below. You should also be aware that any documentation, tutorial, or StackOverflow post written before 2020 will assume your default branch is called `master`.

If you are doing this lesson on your local machine, we recommend setting the default branch name for new repositories you create to `main`. Enter the following into your terminal prompt. You can access the prompt from JupyterLab's Terminal tab.

```
git config --global init.defaultBranch main
```

Next, set your name and email in git by running the following commands on the terminal. 
```
git config --global user.name "FirstName LastName"
git config --global user.name "email@example.com"
```
**The email address used should match the email address of your GitHub account.**

#### Start JupyterLab
Start the terminal from the JupyterLab launcher.

1. Log into [SESYNC's Jupyter Server](https://jupyter.sesync.org).
2. Go to **File -> New Launcher**.
3. Click on Terminal. The terminal will open in a new tab.
 
![]({% include asset.html path="images/terminal_jupyter.png" %})

#### Create a new repository

Create a repository on GitHub. Once created, you'll see a page like the one below.

![]({% include asset.html path="images/copy-repo-url.png" %})

Copy the highlighted repository URL which you will use to clone your remote repository. 

---

### Point-and-click interface

SESYNC's Jupyter Lab server has the [JupyterLab git extension](https://github.com/jupyterlab/jupyterlab-git#readme) enabled. The extension is a user-friendly add-on for JupyterLab that lets you do basic git actions with a point-and-click interface. Access the extension by simply clicking on the git icon on the left-hand side of your screen in Jupyter Lab (you should see something like the screenshot below).

![]({% include asset.html path="images/git-extension.png" %})

#### Create a new folder

1. Click on the **New Folder** and name it.
2. Navigate to the new folder.

![]({% include asset.html path="images/ui-new-folder.png" %})

#### Create a local git repository
1. Clik the Git tab.
2. Click Initialize a Repository.

    ![]({% include asset.html path="images/ui-git-init.png" %})

3. Click yes to confirm and initialize the folder as a git repository.

Congrats! You have initialized a new git repository by using the git extension.

#### Add your work
Now, it is time to do some work by adding a new notebook. 
1. Go to **File -> New Launcher -> Python3** and start a new notebook.

    ![]({% include asset.html path="images/ui-new-notebook.png" %})

2. Work, edit, and save your notebook.

    ![]({% include asset.html path="images/ui-workbook-save.png" %})

#### Stage, Commit, and Push your work to your local git repository
You are now ready to commit your work.

1. Click the git extension tab on the side panel.

    ![]({% include asset.html path="images/ui-git-extension.png" %})

2. Track your notebook by clicking on the plus sign next to its name.

    ![]({% include asset.html path="images/ui-git-track.png" %})

You have staged your notebook. You will notice that it is now under the Staged section. 

    ![]({% include asset.html path="images/ui-git-staged.png" %})

3. Add a title and a brief message description.
4. Click Commit.

    ![]({% include asset.html path="images/ui-git-commit.png" %})

5. If prompted enter your name and email. Once the commit is succesfully completed you will see a green message box popup from the bottom right corner. 

Congrats! You have now succesfully completed your first commit!

#### Link your local repository to your GitHub repository
1. Under the Git tab click Add Remote Repository.
2. Paste the remote repository's URL and click Ok.

    ![]({% include asset.html path="images/ui-git-add-remote.png" %})

3. Go to the Git tab and click Push to Remote.

    ![]({% include asset.html path="images/ui-git-push-remote.png" %})

4. If prompted, enter your username and password for your remote repository and click ok.

You wil see a successful push message once the push has been completed.

    ![]({% include asset.html path="images/ui-git-successful-push.png" %})

You can visit the project's GitHub repository and see your commits. 

    ![]({% include asset.html path="images/ui-check-commits.png" %})

#### Push Notebooks to GitHub
Let's say you have added new changes to your notebook and you would like to commit these changes.

1. Follow the previous instructions to stage, commit and push to your local repository.
2. Push your changes to your remote repository by clicking on the cloud icon with the up arrow.

    ![]({% include asset.html path="images/ui-commit-changes-remote.png" %})

3. If promted, enter your username and password.

You have successfully made changes to your notebook and pushed these changes to the project's local and remote repositories!

---

### Command-line interface

If you prefer to use the command line for using git, here is how you can clone your remote repository, stage, commit, and push your local changes. 

#### Create a new folder

1. Log in to the SESYNC's [Jupyter Server](https://jupyter.sesync.org/).
2. Open the Terminal: **File -> New Launcher -> Terminal**.
3. Make a new project folder.
```
userName@juplab00:~$ mkdir new-project-name
```

#### Clone a repository

1. Navigate to your project folder.
2. Clone your remote repository.
3. If prompted, enter your GitHub username and password. We suggest you use SSH for the URL to avoid having to repeatedly enter your log-in credentials. If you’re not sure if you’ve set up SSH authentication, see these [GitHub instructions](https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh).
4. Navigate into the newly cloned repository by using the `cd` command.

Let's clone your remote repository by running the following command using the remote repository's ulr:
```
git clone https://github.com/githubUserName/my-repo-name.git

ls # lists the names of the folder in your current directory
cd my-cloned-repo # navigate into the cloned repository
```

You have successfully cloned your remote repository. Congrats!

Next we will go over how to add your notebooks and files from your local to your newly created remote repository. 

#### Push Notebooks to GitHub
Your repository is empty right now, let's push a notebook to it. 
1. In your project folder create a new notebook by going to: **File -> New Launcher -> Python3**.
2. Name the Python notebook.
3. Do your work in the notebook and save it.

    ![]({% include asset.html path="images/save-notebook.png" %})

4. Go to terminal and check the status of your repository.
    ```
    git status
    ```
Your file will be listed under untracked files.

    ![]({% include asset.html path="images/git-untracked.png" %})

5. Stage your changes with `git add <filename>`.
    ```
    git add main.py
    ```
You can check which files are being tracked with `git status`.
You can see that `main.ipynb` is being tracked. 

    ![]({% include asset.html path="images/git-add.png" %})

6. Commit your changes with `git commit -m "Commit Message Here"`. 
`commit` creates a checkpoint that you can revert back to at any time
    ```
    git commit -m "Descriptive statitics."
    ```

    ![]({% include asset.html path="images/git-commit.png" %})

7. Pull down the current version of the repository from GitHub.
    ```
    git pull origin main
    ``` 
8. Push your changes to the project's Github repository.
```
git push origin main
```

![]({% include asset.html path="images/git-push.png" %})

You can visit the project's GitHub repository page and see your commits.

![]({% include asset.html path="images/git-push-2.png" %})

Congrats! Yout have succesfully cloned a repository and staged, committed, and pushed your local changes to it. 

If you are confused about the differences between git, GitHub, Gitlab, please refer to SESYNC's FAQ [here](https://cyberhelp.sesync.org/faq/git-vs-github-vs-gitlab.html). 

If you would like to use git with RStudio, check out our FAQ [here](https://cyberhelp.sesync.org/faq/create-rstudio-from-git.html).

---