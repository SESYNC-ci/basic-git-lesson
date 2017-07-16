---
---

## Create a new file

Create a new text file in the RStudio editor as below, adding yourself as the first collaborator.

~~~
## Project Collaborators

- ...
- My neighbor!
~~~
{:.text-document title="collaborators.md"}

In the final part of the lesson, we'll have a project collaborator replace "My neighbor!" with his or her name.

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
