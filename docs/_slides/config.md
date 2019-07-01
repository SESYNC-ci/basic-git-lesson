---
---

## RStudio + git

RStudio provides a GUI to the core tools provided by git. Login to your RStudio Server account and upload `handouts.zip`. Click on "handouts.Rproj" to open the directory as a project.

===

### Initialize git

Convert your RStudio project to a git repository by enabling version control,
available from the menu bar under "Tools" > "Version Control" > "Project Setup".

===

![]({% include asset.html path="images/git-init.png" %}){:width=60%}  
{:.captioned}

Adding a git repository creates a hidden folder in your project called ".git",
storing all the data about your project's current and past state.
{:.notes}

===

### Commit

Once RStudio refreshes your project, there will be a "Git" tab in the same
window as the Environment tab. The window shows files that have content not
already commited in the current state of your project. Choose "Commit" to open a
new window for easy staging and commiting.

===

1. check `README.md` and `handouts.Rproj`
1. write a commit message
1. commit (but heed the warning!)

Saving, staging, and commiting are each separate steps, none of which imply any
of the others. This may seem like a hassle, but is a good thing! As your project
grows larger, you will frequently save changes you don't want to commit: staging
lets you choose what changes get packaged into a commit.
{:.notes}

===

### History

The history of your project shows a single commit, every new commit will be
chained on top of a preceding commit. Note the "Author" data is probably not
going to be recognized by GitHub and linked to your account.

===

For GitHub to associate commits with your account, configure git with your
GitHub username and email address.

~~~bash
git config --global user.name {{ site.example.user }}
git config --global user.email {{ site.example.email }}
git commit --no-edit --amend --reset-author
~~~
{:.text-document title="{{ site.data.lesson.handouts[0] }}"}

Revisit the commit history to confirm that the author information has been
amended for the first commit. In the future, configure your `user.name` and `user.email` before starting a project, so you do not have to ammend any commits.
{:.notes}

===

### Create the Hub

Sign in or sign up on [GitHub](https://github.com), then create an empty
repository.

![]({% include asset.html path="images/new_repo-1.png" %}){:width="50%"}  
{:.captioned}

===

1. Give your repository the same name as your RStudio project.
1. Add a short "tag line" about your workshop experience.
1. **Do not check either box.**

===

You have created a repository that has no history---it will accept the commits
made in RStudio without conflict. The quick start information provided by GitHub
explains how to finish configuration of your local git repo.

~~~bash
git remote add origin https://github.com/{{ site.example.user }}/handouts.git
git push -u origin master
~~~
{:.text-document title="{{ site.data.lesson.handouts[0] }}"}

===

Go back to your GitHub account and check out your "hub".

- `README.md` is a Markdown file giving basic information about the repository.
- There is a list of files, including a folder for data.
- You are looking at a branch called `master`.
- The commit history is available from the top bar.
- The "Clone or download" button provides a URL.

In addition to being the center point for sharing commits with collaborators,
GitHub is a rich platform for managing projects and inspecting the history.
{:.notes}
