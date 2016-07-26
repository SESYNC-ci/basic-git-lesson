---
---

## Create a GitHub Repository

Create a new "test" repository at [https://github.com/%username%](https://github.com/itcarroll/){:target='_blank'}, initializing the repo with a "README.md".

![]({{ site.baseurl }}/images/new_repo.png){:width="30%"}  
{:.fragment .captioned}

![]({{ site.baseurl }}/images/repo_name.png){:width="30%"}  
{:.fragment .captioned}

![]({{ site.baseurl }}/images/repo_readme.png){:width="30%"}  
{:.fragment .captioned}

<!--split-->

### What's in a "repo"?

![]({{ site.baseurl }}/images/repo_files.png){:width="30%"}  
{:.captioned}

- Note that you are looking at a branch called `master`.
- There is one commit.
- README.md is a Markdown file.

<!--split-->

### Centralized Workflow

![]({{ site.baseurl }}/images/atlassian_workflow.svg){:width="30%"}  
*[Image][comparing-workflows] by Atlassian / [CC BY]*
{:.captioned}

The **origin** is the central repository, in this case it lives on GitHub. Every member of the team gets a **local** copy of the entire project, called a **clone**.

![]({{ site.baseurl }}/images/atlassian_pull.svg){:width="30%"}  
*[Image][comparing-workflows] by Atlassian / [CC BY]*
{:.captioned}

A worker **pulls** contributions from other teammates from the **origin** when ready, and she **pushes** updates to the **origin** when ready to share her own work.

<!--split-->

A commit is a unit of work: any collection of changes to files in the repository.
A versioned project is like a tree of commits, although the current tree has just one **branch**.
After a worker creates a **clone**, the local copy is in the same place as the **origin**.

![]({{ site.baseurl }}/images/atlassian_clone.svg){:width="40%"}  
*[Image][syncing] by Atlassian / [CC BY]*
{:.captioned}

<!--split-->

A **pull** applies commits copied from the **origin** to your local repo, syncing them up.

![]({{ site.baseurl }}/images/atlassian_after_pull.svg){:width="40%"}  
*[Image][syncing] by Atlassian / [CC BY]*
{:.captioned}

<!--split-->

A **push** copies local commits to the **origin** and applies them remotely.

![]({{ site.baseurl }}/images/atlassian_after_push.svg){:width="40%"}  
*[Image][syncing] by Atlassian / [CC BY]*
{:.captioned}

[comparing-workflows]: https://www.atlassian.com/git/tutorials/comparing-workflows
[syncing]: https://www.atlassian.com/git/tutorials/syncing/git-pull
[CC BY]: http://creativecommons.org/licenses/by/2.5/au/
