---
---

## RStudio Projects

This software is an example of an *integrated development environment* and focuses on

1. Editing scripts written in the R language.
1. Running R language commands or programs in the R interpreter.
1. Helping to manage many components of a collaborative project using version control.

===

## Integration with git

RStudio provides convenient access to the core tools provided by `git`, so any project can also be a repository. Under the File menu, create a new project from a remote version control repository.

![]({{ site.baseurl }}/images/new_project.png){:width=60%}

===

## Configure git

Every commit has an author. For GitHub to attribute commits to your account, configure `git` with your GitHub username and associated e-mail address.

~~~
## Configure git

git config --global user.name ...
git config --global user.email ...
~~~
{:.text-document title="{{ site.handouts }}"}

===

## Configure your clone

The "handouts" repository is currently linked---via URL---to the "hub" you cloned from SESYNC's repositories on GitHub. To transfer the repository to the newly created repository owned by you, set the URL to the one provided and push all the things.

~~~
## Change the "origin" remote URL and push

git remote set-url origin ...
git push --all
~~~
{:.text-document title="{{ site.handouts }}"}

Save your `{{ site.handouts }}` and select "Run Script" to execute these shell commands.

===

## Commit & push

The first change you made to the handouts repository are your edits to `{{ site.handouts }}`. You have saved them, but you haven't committed them to the repository.

1. On the `git` tab in RStudio, select commit
1. Check the modifications to "Stage"
1. Add a commit message
1. Commit
1. Push
