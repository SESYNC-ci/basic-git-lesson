---
---

## Collaborators

Collaboration that goes beyond commenting on a final report---integrated work on
a project from start to finish---raises workflow challenges.

- Data, script, or report; who has the most up-to-date version?
- Will a collaborator's work overwrite your own?
- How to recover a working version of a broken pipeline?

Centralized workflows, managed by git, help to answer these questions.

===

### Project Integrity

- The origin becomes the official up-to-date repo, even if *your* work is a
  few commits ahead.
- Diverging files are usually automatically merged by git.
- Manual re-integration is aided by the ability to "checkout" the project at any
  commit.

Version control software works well with text files. Large, non-text
components of your project (e.g. very big or binary data files) can slow down
any cloning, merging or branch switching. For that reason, data rarely live in a
repository with code and. Keeping data and code separate also facilitates data
reuse---it's not tied to one pipeline.
{:.notes}

===

Add a section where you can list collaborators to the README.md file. Our aim is
to let your collaborators update this list with their own name, so only include yourself. You can use any text editor, and RStudio's is quite handy.

~~~
## Collaborators

- {{ site.example.name }}
~~~
{:.text-document.no-eval title="README.md"}


===

### Stage

Before you can commit changes involving a new file, you have to tell git which modifications you want to commit by staging.

1. Go to the "Git" tab in RStudio.
1. Select "Commit" to open the "Review Changes" window.
1. Select "Staged" to add modifications (hence "M") by "README.md".

===

### Commit

1. Enter a brief (<50 chars) descriptive message about the commit.
1. Commit!
1. Close the "Review Changes" window.

===

### Push

Look at the "Git" tab again and notice that your branch is "ahead of
origin/master". Push the commit to your GitHub repo.

===

### GitHub Collaborators

Even on public GitHub repos, only the owner has "push access" by default. The
owner can allow any other GitHub user to push by inviting collaborators under
the settings tab.

![]({% include asset.html path="images/repo_collab.png" %})
{:.captioned}

===

Introduce yourself to your neighbor and assign split the two roles below between you. Be sure to watch eachother perform the steps assigned to your individual roles.

1. Owner: add your neighbor as a collaborator.
1. Collaborator: accept your neighbor's emailed invitation.

===

### Create a Second Spoke

The **Collaborator** now needs to create a new project in RStudio by cloning the
**Owner's** project. Under the "File" menu item, choose to create a New Project,
and then choose "Version Control".

You cannot use the same name for two project folders! Before cloning, the
**Collaborators** should close their project and rename or delete their "handouts"
folder.
{:.notes}

===

![]({% include asset.html path="images/new_project.png" %}){:width=60%}  
{:.captioned}

===

### Push & Pull

1. Collaborator: Add your name to the list in the "README.md".
1. Collaborator: Stage, commit, and push (up arrow) your modifications.
1. Owner: Pull (down arrow) to apply your neighbor's commit.

===

### Merge

You both realize it would have been good to include your affiliation along with
your name. Do you need to circulate "README.md" to each collaborator in sequence
for an update? No!

1. Ower **AND** Collaborator: edit your entry in the "README.md"
1. Ower **AND** Collaborator: stage, commit, & push.
1. Owner **OR** Collaborator: if you receive an error message, it tells you
exactly what to do.