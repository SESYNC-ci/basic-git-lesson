---
---

## Create a new file

Create a new file called `model.nlogo`.

~~~
to setup
  clear-all
  create-turtles 100 [ setxy random-xcor random-ycor ]
  reset-ticks
end
~~~
{:.text-document title="model.nlogo"}

===

## Track it with git

Before you can commit changes involving `model.nlogo`, you have to tell the version control system (that's `git`!) to watch for changes to this file.

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

1. Copy/write in full code for a model from the lesson on NetLogo Programming.
1. Commit and push your work.
1. Now create a new RStudio project from your neighbour's repository.
1. Add a comment to explain what part of the code does.
1. Commit and push your work.
