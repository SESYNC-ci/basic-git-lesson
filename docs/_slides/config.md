---
---

## RStudio + git

*Note*: The rest of this lesson walks you through basic git actions with RStudio.
If you are a Python user, check out the abbreviated version of the [basic git lesson with JupyterLab]({{ site.gh-pages }}/basic-git-lesson/git_and_jupyterlab.html). 
SESYNC's JupyterLab server has the [JupyterLab git extension](https://github.com/jupyterlab/jupyterlab-git#readme) 
installed to make it easy for you to work with git-versioned Python code in Jupyter.
{:.notes}

In RStudio, open the `handouts` directory that you unzipped from this lesson's `handouts.zip` file. 
(If you are participating in the Summer Institute, instead login to RStudio on [lab.sesync.org](https://lab.sesync.org), 
and `handouts.zip` will already be uploaded for you.) Click on `handouts/handouts.Rproj` to open the directory as a project.

RStudio provides a GUI (a point-and-click interface) to the core tools provided by git. 
Every folder that contains a "*.Rproj" file is an RStudio project (simply a collection of files
and configuration settings). We use `git` to turn our project into a
"repository," or "repo" for short, a term from the software development community that encompasses a
project along with its development history. On your local machine, the repository 
simply appears as a folder with project-associated files. `git` tracks the history
of the changes you and collaborators have made to the project files over time.
{:.notes}

===

### Note on terminology and configuration

As of October 1, 2020, all new repositories created on GitHub will have a default branch
called `main`. Previously, the default name was `master`. The [change](https://github.com/github/renaming) was
made to promote inclusive language in the version control world. SESYNC has updated 
the GitLab and teaching lab servers to match this new default. However, the git client that is running
on the SESYNC RStudio server still defaults to `master` if you create a repository locally, 
unless you configure it as described below.
You should also be aware that any code, documentation, tutorial, or StackOverflow
post written before 2020 will assume your default branch is called `master`. 
{:.notes}

If you are doing this lesson on your local machine, we recommend setting the
default branch name for new repositories you create to `main`. Enter the
following into your terminal prompt. You can access the prompt from RStudio's
Terminal tab.

~~~bash
git config --global init.defaultBranch main
~~~
{:.text-document title="worksheet.sh"}

This option is available for git version 2.28 or later. 

===

### Initialize git

Convert your RStudio project to a git repository by enabling version control,
available from the menu bar under "Tools" > "Version Control" > "Project Setup".

===

![]({% include asset.html path="images/git-init.png" %}){:width="60%"}  
{:.captioned}

Adding a git repository creates a hidden folder in your project called `.git`,
storing all the data about your project's current and past states.
{:.notes}

===

### Commit

Once RStudio refreshes your project, there will be a "Git" tab in the same
window as the Environment tab. The window shows files that have content not
already committed in the current state of your project. At first, this
will be every file in the directory, because you created a blank repository.
Choose "Commit" to open a new window for easy staging and committing.

===

1. check `README.md` and `handouts.Rproj`
1. write a short and informative (<50 characters) commit message
1. commit 

**You will get an error message!** Read on to resolve it.

===

For [GitHub](https://github.com) to associate commits with your account, 
configure git with your GitHub username and email address. 
(If you don't have a GitHub user account yet, sign up for one now.)

~~~bash
git config --global user.name {{ site.data.lesson.example.user }}
git config --global user.email {{ site.data.lesson.example.email }}
~~~
{:.text-document title="worksheet.sh"}

===

### Personal access token

When you set up your GitHub user account, in addition to selecting a 
username and password, you will also need to [create a personal access token][pat].
Go to the page on GitHub.com to create your token, follow the instructions, copy
the token, and save it in a safe place.

![]({% include asset.html path="images/token-page-screenshot.png" %}){:width="80%"}  
*Screenshot of personal access token page after creating token*
{:.captioned}

As of August 2021, a personal access token is now required to authenticate
pushing from a local repo to a remote repo on GitHub.com. The link above is to a GitHub documentation page
with very detailed instructions on how to navigate to the settings page where
you can generate a token. Follow these instructions! When you are prompted to select the scopes 
(permissions) to give the token, check the box marked `repo`. When the token
is generated, copy it and save it in a safe place; you will need it in a moment.
For long term storage, consider using a password manager like [LastPass][lastpass].
{:.notes}

===

Configure your username and email address by entering the `git config` 
commands into RStudio's Terminal window. 
After configuring your username and email address, return to the Commit
window and commit your changes. 

===

Now, author information will be associated with the commit.
In the future, configure your `user.name` and
`user.email` before starting a project. 
This is a one-time configuration for each computer on which you use
RStudio, so you don't have to repeat this for any subsequent repositories you
create on this machine.
{:.notes}

Saving, staging, and commiting are each separate steps, none of which imply any
of the others. This may seem like a hassle, but is a good thing! As your project
grows larger, you will frequently save changes you don't want to commit: staging
lets you choose what changes get packaged into a commit.
{:.notes}

### History

The history of your project shows a single commit. Every new commit will be
chained on top of a preceding commit.

===

### Create the Hub

Sign in on [GitHub](https://github.com), then create an empty
repository.

![]({% include asset.html path="images/new_repo-1.png" %}){:width="50%"}  
{:.captioned}

===

1. Give your repository the same name as your RStudio project.
1. Add a short "tag line" about your workshop experience.
1. **Do not check the "Initialize this repository with a README" box.**

===

You have created a repository that has no history---it will accept the commits
made in RStudio without conflict. The quick start information provided by GitHub
explains how to finish configuration of your local git repo. Copy 
the code under "...or push an existing repository from the command line" and paste
it into the RStudio Terminal window.

Make sure that `HTTPS` is selected, not `SSH`, at the top of the page, or you'll
get the wrong code to copy. Also, the line `git branch -M main` is unnecessary if you already configured
the default branch to be called `main` locally. 
{:.notes}

~~~bash
git remote add origin https://github.com/{{ site.data.lesson.example.user }}/handouts.git
git push -u origin main
~~~
{:.text-document title="Console"}

**IMPORTANT**: When you are prompted to enter your password, 
**paste your GitHub [personal access token][pat]** into the prompt, *not* the password 
that you use to sign in to GitHub.com in your browser. On Windows you will need to use 
`Shift`+`Insert` or right-click with the mouse to paste, because `Ctrl`+`V` will not 
work in a terminal window. You won't see asterisks appearing when you paste the token, 
as you do in typical password prompts, but don't worry, it's there! 
{:.notes}

After this first push, you will no longer need to use the terminal to push changes. 
You can use the RStudio dropdown menu to both commit and push changes, and
you won't have to enter the token each time.
{:.notes}

===

Go back to your GitHub account and check out your "hub".

- `README.md` is a Markdown file giving basic information about the repository.
- There is a list of files, including a folder for data.
- You are looking at a branch called `main`.
- The commit history is available from the top bar.
- The "Code" button provides a URL for collaborators to clone the repo.

In addition to being the center point for sharing commits with collaborators,
GitHub is a rich platform for managing projects and inspecting the history.
{:.notes}

[pat]: https://docs.github.com/en/github/authenticating-to-github/keeping-your-account-and-data-secure/creating-a-personal-access-token
[lastpass]: https://www.lastpass.com
