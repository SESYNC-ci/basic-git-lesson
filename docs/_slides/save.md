---
---

## Create a new file

Use the editor to create a new file

~~~
blah blah blah
~~~
{:.text-document title="blah.txt"}

===

## Track it with git

Before you can commit changes involving a new file, you have to tell the version control system (that's `git`!) to watch it..

1. Go to the `git` tab in RStudio
1. Select `commit` to open the "Review Changes" window
1. Select "Staged" to add (hence "A") the new file.
1. Enter a descriptive message about the commit.
1. Commit!

===

## Push (but not yet!)

Open the "Review Changes" window again and notice that your branch is ahead of origin/master! You could then push those commit(s) to your Bitbucket repo.

Since we all just created the same file, that's not a good idea!

===

## Undoing things

Before you have commited anything, you can continue to update files however you like. The safe way to undo a commit is to apply a new commit that "reverts" the one you want to change.

~~~
system("git revert <SHA>")
~~~
{:.input}
