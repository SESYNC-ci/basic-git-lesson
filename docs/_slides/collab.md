---
---

## Working with Collaborators

True collaboration goes deeper than commenting on a final report, but integrated work on a project from start to finish raises workflow challenges.

- Be it data, a script, or a write-up, who has the most up-to-date version?
- Will a teammate's work overwrite any of your own?
- How do I recover the working version of code the PI broke?

Centralized workflows, managed by `git`, helps answer these questions.

===

## Project Integrity

- The **origin** becomes the official up-to-date repo, *even* if your work is a few commits ahead.
- Diverging files are easily reintegrated with a **merge** algorithm.
- The complete project history is available to **checkout**.

Note, version control works really well with text. Non-textual components of your project (e.g. large or binary data) rarely live in a repository.

===

## Create a new file

Create a new text file in the RStudio editor as below, adding yourself as the first collaborator.

~~~
## Project Collaborators

- ...
- My neighbor!
~~~
{:.text-document title="collaborators.md"}

Our aim is to let your project collaborator replace "My neighbor!" with his or her name.

===

## Track it with git

Before you can commit changes involving a new file, you have to tell the version control system (that's `git`!) to watch it..

1. Go to the `git` tab in RStudio
1. Select `commit` to open the "Review Changes" window
1. Select "Staged" to add (hence "A") the new file.
1. Enter a descriptive message about the commit.
1. Commit!

===

## Push

Look at the `git` tab again and notice that your branch is ahead of origin/master! Push those commit(s) to your GitHub repo.

===

## Exercise 1

Modify the `collaborators.md` file again to add a third "TBD" collaborator, and push the modification to the origin as one commit.

===

The first step to collaborative workflows is granting access to the **origin** of your project. Introduce yourself to your neighbor, and ask for his/her GitHub username.

![]({{ site.baseurl }}/images/repo_collab.png)
{:.captioned}

Add your neighbor as a collaborator, and accept your neighbor's invitation to collaborate!

===

## Editing on GitHub

Go to your neighbors repository on GitHub, and open `collaborators.md`. The text below shows "My Neighbor!" where you should see your neighbor's name. Edit the file in your neighbor's repo, by replacing the remaining "My neighbor!" with your own name.

~~~
## Project Collaborators

- My neighbor!
- ...
- TBD
~~~
{:.text-document title="collaborators.md"}

Always write a meaningful commit message when you save!

===

## Exercise 2

Create a new RStudio project from your neighbor's repository. Note the name you choose during project creation in RStudio does not have to be "handouts", i.e. it does not have to match the name of the repository on GitHub. Make further changes to the `collaborators.md` file, then commit & push.
