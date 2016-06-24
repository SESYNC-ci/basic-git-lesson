---
---

## Create a GitHub Repository

[https://github.com/%username%](https://github.com/itcarroll/){:target='_blank'}

![]({{ site.baseurl }}/images/new_repo.png)  
Create a new repository.
{:.fragment}

![]({{ site.baseurl }}/images/repo_name.png)  
Name your repository "test".
{:.fragment}

![]({{ site.baseurl }}/images/repo_readme.png)  
Check the box to include a "README.md".
{:.fragment}

<!--split-->

### What's in a "repo"?

![]({{ site.baseurl }}/images/repo_files.png)

+ Note that you are looking at a branch called `master`.
+ There is one commit.
+ README.md is a Markdown file.

<!--split-->

### Centralized Workflow

![]({{ site.baseurl }}/images/atlassian_workflow.svg){:width="30%"}  
*[Image](https://www.atlassian.com/git/tutorials/comparing-workflows) by Atlassian / [CC BY](http://creativecommons.org/licenses/by/2.5/au/)*

The **origin** is the central repository, in this case it lives on GitHub. Every member of the team gets a **local** copy of the entire project, called a **clone**.

![]({{ site.baseurl }}/images/atlassian_pull.svg){:width="30%"}  
*[Image](https://www.atlassian.com/git/tutorials/comparing-workflows) by Atlassian / [CC BY](http://creativecommons.org/licenses/by/2.5/au/)*

A worker **pulls** contributions from other teammates from the **origin** when ready, and she **pushes** updates to the **origin** when ready to share her own work.

<!--split-->

A commit is a unit of work; any collection of changes to files in the repository. After a worker creates a **clone**, the local copy is in the same place as the **origin**.

![]({{ site.baseurl }}/images/atlassian_clone.svg){:width="40%"}  
*[Image](https://www.atlassian.com/git/tutorials/syncing/git-pull) by Atlassian / [CC BY](http://creativecommons.org/licenses/by/2.5/au/)*

<!--split-->

A **pull** applies commits copied from the **origin** to your local repo, syncing them up.

![]({{ site.baseurl }}/images/atlassian_after_pull.svg){:width="40%"}  
*[Image](https://www.atlassian.com/git/tutorials/syncing/git-pull) by Atlassian / [CC BY](http://creativecommons.org/licenses/by/2.5/au/)*

<!--split-->

A **push** copies local commits to the **origin** and applies them remotely.

![]({{ site.baseurl }}/images/atlassian_after_push.svg){:width="40%"}  
*[Image](https://www.atlassian.com/git/tutorials/syncing/git-pull) by Atlassian / [CC BY](http://creativecommons.org/licenses/by/2.5/au/)*

