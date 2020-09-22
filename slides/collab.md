---
---

## Collaborators

Collaboration that goes beyond commenting on a final report---integrated work on
a project from start to finish---raises serious challenges. Distributed
repositories, managed by git, help to answer these questions.
{:.notes}

- Data, script, or report: who has the latest version?
- Will a collaborator's work erase or break your own?
- How can you recover a working version of a pipeline?


===

### Project Integrity

- The origin becomes the official "latest" version, even if *your* work is a
  few commits ahead.
- Diverging files are usually automatically merged by git.
- Manual re-integration is aided by the ability to "checkout" the project at any
  commit.

Version control software works well with text files. Large, non-text
components of your project (e.g., very big or binary data files) can slow down
any cloning, merging or branch switching. For that reason, data rarely live in a
repository with code. Keeping data and code separate also facilitates data
reuse---it's not tied to one pipeline.
{:.notes}

===

Add a section where you can list collaborators to the `README.md` file. Our aim is
to let your collaborators update this list with their own name, so only include
yourself. You can use any text editor, and RStudio's is quite handy.

~~~
## Collaborators

- {{ site.data.lesson.example.name }}
~~~
{:.text-document.no-eval title="README.md"}


===

### Stage

Before you can commit changes involving a new file, you have to tell git which
modifications you want to commit by staging.

1. Go to the "Git" tab in RStudio.
1. Select "Commit" to open the "Review Changes" window.
1. Select "Staged" to add modifications (hence "M") by "README.md".

===

### Commit

1. Enter a brief (<50 characters) descriptive message about the commit.
1. Commit!
1. Close the "Review Changes" window.

===

### Push

Look at the "Git" tab again and notice that your branch is "ahead of
origin/main". Push the commit to your GitHub repo.

If you view the "History" tab you can now see that the local repo and
the remote repo have an identical state.
{:.notes}

===

### GitHub Collaborators

Even on public GitHub repos, only the owner has "push access" by default. The
owner can allow any other GitHub user to push by inviting collaborators under
the settings tab (Settings > Manage access > Invite a collaborator).

![]({% include asset.html path="images/repo_collab.png" %})
{:.captioned}

===

Choose a partner for this exercise and split the two roles below between
you. Be sure to watch each other perform the steps assigned to your individual
roles, either in person or by screen sharing.

1. Owner: add your partner as a collaborator.
1. Collaborator: accept your partner's emailed invitation.

===

### Create a Second Spoke

The **Collaborator** now needs to create a new project in RStudio by cloning the
**Owner's** project. Under the "File" menu item, choose to create a New Project,
and then choose "Version Control".

You cannot use the same name for two project folders! The **Collaborator**
should choose a different name for their copy of the **Owner's** project.
{:.notes}

===

![]({% include asset.html path="images/new_project.png" %}){:width=60%}  
{:.captioned}

===

### Push & Pull

1. Collaborator: Add your name to the list in the "README.md".
1. Collaborator: Stage, commit, and push (up arrow) your modifications.
1. Owner: Pull (down arrow) to apply your neighbor's commit.

If you view the "History" tab, you can see that both the remote and
local repo are both updated with a record of the changes made by
both collaborators!
{:.notes}

===

### Merge

In the previous example, everything happened in sequence. First the owner committed
and pushed, then the collaborator pulled, committed, and pushed, then the owner
pulled again. Each time, changes were made to the most recent "official" version
of the repo, so there were no conflicts. However, if two collaborators make 
changes to the same line of the same file at the same time, git does not know automatically 
which version to use. However, you can use `git` to help resolve the conflict because it
identifies exactly where the conflicts are so that you can fix them.
{:.notes}

You both realize it would have been good to include your affiliation along with
your name. Do you need to circulate "README.md" to each collaborator in sequence
for an update? No!

1. Ower **AND** Collaborator: edit your entry in `README.md`.
1. Ower **AND** Collaborator: stage, commit, & push.
1. Owner **OR** Collaborator: if you receive an error message, it tells you
exactly what to do.

===

If you receive the merge conflict message, first pull your collaborator's change
from the remote repo. Then, open `README.md` and you will see that
`git` has put some markers into the file to indicate where the conflict is. Each
of the two possible versions appear in the file, one after the other.

```
<<<<<<< HEAD
- John Doe (SESYNC)
- Jane Roe
=======
- John Doe
- Jane Roe (State U.)
>>>>>>> 17a88283234fe8cda436b
```

You can also see that the file is conflicted in the Commit window because it 
now has an orange "U" next to it, for "unresolved."
{:.notes}

===

Resolve the conflict by deleting the parts of the conflicted section that 
you do not want to keep. Then delete all the conflict markers. Now, if you 
click on the checkbox for `README.md` in the Commit window, the "U" will
change to an "M" and you should be able to commit and push without error.

After you successfully complete a merge, move back to your own "handouts" project
in RStudio to access your own worksheets.
{:.notes}

*Important note*: If you find resolving merge conflicts confusing, the best
way to avoid them is to **pull before you push**! That means always pull the 
most recent version of the repo from the remote before making changes. That way,
merge conflicts will only occur if you and your collaborator(s) are working on
the code at the exact same time.
{:.notes}