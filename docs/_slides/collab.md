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

Note, version control works really well with text. Non-textual components of your project (e.g. large or binary data) need advanced treatment.

===

The first step to collaborative workflows is granting access to the **origin** of your project. Introduce yourself to your neighbour, and ask for his/her GitHub username.

![]({{ site.baseurl }}/images/repo_collab.png)
{:.captioned}

Add your neighbour as a collaborator, and accept your neighbours invitation to collaborate!

===

## Editing on GitHub

Go to your neighbors repository on GitHub, and open `collaborators.md`. The text below shows "My Neighbor!" where you should see your neighbor's name. Edit the file in your neighbour's repo, by replacing the remaining "My neighbor!" with your own name.

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

Create a new RStudio project from your neighbour's repository. Note the name you choose during project creation in RStudio does not have to be "handouts", i.e. it does not have to match the name of the repostitory on GitHub. Make further changes to the `collaborators.md` file, then commit & push.
