---
---

## Create a new file

Copy the `.nlogo` file saved from the NetLogo Programming lesson into this directory:

~~~
turtles-own [energy]

...

@#$#@#$#@
GRAPHICS-WINDOW
~~~
{:.text-document title="model.nlogo"}

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

Open the "Review Changes" window again and notice that your branch is ahead of origin/master! Push those commit(s) to your GitHub repo.

===

## Challenge

1. Enter a description into the "WHAT IS IT?" section of the NetLogo model.
1. Commit and push your work.
1. Now create a new RStudio project from your neighbour's repository.
1. Add a comment to explain what part of the code does.
1. Commit and push your work.
