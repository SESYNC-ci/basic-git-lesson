---
---

## Working with Collaborators

True collaboration goes deeper than commenting on a final report, but integrated work on a project from start to finish raises workflow challenges.

- Be it data, a script, or a write-up, who has the most up-to-date version?
- Will a teammate's work overwrite any of your own?
- How do I recover the working version of code the PI broke?

A centralized workflow, managed by `git`, helps answer these questions.

===

## Centralized Workflow

- The **origin** becomes the official up-to-date repo, *even* if your work is a few commits ahead.
- Diverging projects are easily reintegrated with a **merge** algorithm.
- The complete project history is available to **checkout**.

Note, version control works really well with text. Non-textual components of your project (e.g. spatial data) need advanced treatment.

===

The first step to collaborative workflows is granting access to the **origin** of your project.

Introduce yourself to your neighbour, and ask for his/her GitHub username.

![]({{ site.baseurl }}/images/repo_collab.png)
{:.captioned}

Add your neighbour as a collaborator, and accept your neighbours invitation to collaborate!

===

## Editing on GitHub

Edit the README.md from your neighbour's repo, by adding more goals to their README.

~~~
# SESYNC Spatial ABMs Course

Goals

- Learn to build Spatial ABMs!
- Work with a team.

~~~
{:.text-document title="README.md"}

Always write a meaningful commit message when you save!

## Challenge

1. Create a new RStudio project from your neighbour's repository.
1. Add a comment to explain what part of the code does.
1. Commit and push your work.
