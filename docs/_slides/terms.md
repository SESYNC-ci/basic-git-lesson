---
---

## Syncing Repos

![]({% include asset.html path="images/atlassian_workflow.svg" %}){:width="60%" style="border: none; box-shadow: none;"}  
*[Image][comparing-workflows] by Atlassian / [CC BY]*
{:.captioned}

The **origin** is the central repository; in this case it lives on GitHub. Every member of the team gets a **local** copy of the entire project, called a **clone**.

===

![]({% include asset.html path="images/atlassian_pull.svg" %}){:width="50%" style="border: none; box-shadow: none;"}  
*[Image][comparing-workflows] by Atlassian / [CC BY]*
{:.captioned}

Cloning is the initial **pull** of the entire project and all its history. In general, a worker **pulls** the work of other teammates from the **origin** when ready to incorporate their work, and she **pushes** updates to the **origin** when ready to contribute her own work.

===

A git repository is a network of commits, although the current network is a tree
with no splits. After a worker creates a **clone**, the local repo is
in the same state as the **origin**.

In the following diagrams, the lower box represents the local repo (on your machine)
and the upper box represents the remote repo (on GitHub). The graph in the middle 
represents successive commits over time, moving from left to right. Notice that the 
local and remote (origin) repos are both on a branch called *master* in the diagram
below. This is the default name given to the primary version of the repository.
As of June 2020, discussions are underway to 
[rename the "master"" branch to avoid referencing slavery](https://www.zdnet.com/article/github-to-replace-master-with-alternative-term-to-avoid-slavery-references/),
so you may notice this terminology change in the near future. 
{:.notes}

![]({% include asset.html path="images/atlassian_clone.png" %}){:width="40%" style="border: none; box-shadow: none;"}  
*[Image][syncing] by Atlassian / [CC BY]*
{:.captioned}

===

When the origin has commits that do not exist in the local repo, it has gotten ahead and a **pull** is required to synchronize state.

![]({% include asset.html path="images/atlassian_after_pull_top.png" %}){:width="55%" style="border: none; box-shadow: none;"}  
*[Image][syncing] by Atlassian / [CC BY]*
{:.captioned}

===

A **pull**, or initially a **clone**, applies commits copied from the **origin**
to your local repo, as if you had created identical commits locally.

![]({% include asset.html path="images/atlassian_after_pull_bottom.png" %}){:width="60%" style="border: none; box-shadow: none;"}  
*[Image][syncing] by Atlassian / [CC BY]*
{:.captioned}

===

In the opposite situation, commits created locally are not immediately
synchronized to the **origin**.

![]({% include asset.html path="images/atlassian_after_push_top.png" %}){:width="60%" style="border: none; box-shadow: none;"}  
*[Image][syncing] by Atlassian / [CC BY]*
{:.captioned}

===

A **push** copies local commits to the **origin** and applies them remotely.

![]({% include asset.html path="images/atlassian_after_push_bottom.png" %}){:width="60%" style="border: none; box-shadow: none;"}  
*[Image][syncing] by Atlassian / [CC BY]*
{:.captioned}

===

An essential component of version control is the ability to merge
commit histories that have diverged.

![]({% include asset.html path="images/atlassian_before_merge.svg" %}){:width="60%" style="border: none; box-shadow: none;"}  
*[Image][using-branches] by Atlassian / [CC BY]*
{:.captioned}

The commit graph splits any time different commits are applied to the same
"parent" commit. Automatic merging done by git integrates the changes from both
into a new "merge commit," unsplitting the commit graph.
{:.notes}

===

The **origin** will not accept a push that requires merging. In order to
preserve integrity, the contributor is always responsible for overseeing the
merge on a local **clone**.

![]({% include asset.html path="images/atlassian_after_merge.svg" %}){:width="70%" style="border: none; box-shadow: none;"}  
*[Image][using-branches] by Atlassian / [CC BY]*
{:.captioned}

After the merge commit has been created locally, the same situation now exists that
was depicted above. The conflict has been resolved and the origin will now accept 
a **push**.
{:.notes}

[using-branches]: https://www.atlassian.com/git/tutorials/
[comparing-workflows]: https://www.atlassian.com/git/tutorials/comparing-workflows
[syncing]: https://www.atlassian.com/git/tutorials/syncing/git-pull
[CC BY]: http://creativecommons.org/licenses/by/2.5/au/
