---
---

## Syncing Repos

![]({% include asset.html path="images/atlassian_workflow.svg" %}){:width="50%" style="border: none; box-shadow: none;"}  
*[Image][comparing-workflows] by Atlassian / [CC BY]*
{:.captioned}

The **origin** is the central repository, in this case it lives on GitHub. Every member of the team gets a **local** copy of the entire project, called a **clone**.

===

![]({% include asset.html path="images/atlassian_pull.svg" %}){:width="50%" style="border: none; box-shadow: none;"}  
*[Image][comparing-workflows] by Atlassian / [CC BY]*
{:.captioned}

Cloning is the initial **pull** of the entire project and all its history. In general, a worker **pulls** the work of other teammates from the **origin** when ready to incorporate their work, and she **pushes** updates to the **origin** when ready to contribute work of her own work.

===

A git repository is a network of commits, although the current network is a tree
with just one **branch**. After a worker creates a **clone**, the local repo is
in the same state as the **origin**.

![]({% include asset.html path="images/atlassian_clone.png" %}){:width="30%" style="border: none; box-shadow: none;"}  
*[Image][syncing] by Atlassian / [CC BY]*
{:.captioned}

===

A **pull**, or initially a **clone**, applies commits copied from the **origin**
to your local repo, syncing them up.

![]({% include asset.html path="images/atlassian_after_pull_top.png" %}){:width="40%" style="border: none; box-shadow: none;"}  
*[Image][syncing] by Atlassian / [CC BY]*
{:.captioned}

===

A **pull**, or initially a **clone**, applies commits copied from the **origin** to your local repo, syncing them up.

![]({% include asset.html path="images/atlassian_after_pull_bottom.png" %}){:width="40%" style="border: none; box-shadow: none;"}  
*[Image][syncing] by Atlassian / [CC BY]*
{:.captioned}

===

A **push** copies local commits to the **origin** and applies them remotely.

![]({% include asset.html path="images/atlassian_after_push_top.png" %}){:width="40%" style="border: none; box-shadow: none;"}  
*[Image][syncing] by Atlassian / [CC BY]*
{:.captioned}

===

A **push** copies local commits to the **origin** and applies them remotely.

![]({% include asset.html path="images/atlassian_after_push_bottom.png" %}){:width="40%" style="border: none; box-shadow: none;"}  
*[Image][syncing] by Atlassian / [CC BY]*
{:.captioned}

===

An essential component of the centralized workflow is the ability to merge
commit histories that have diverged. Any fork in the history has to be
re-integrated, and git does this automatically through merging.

![]({% include asset.html path="images/atlassian_before_merge.svg" %}){:width="50%" style="border: none; box-shadow: none;"}  
*[Image][using-branches] by Atlassian / [CC BY]*
{:.captioned}

===

The **origin** will not accept a push before merging. In order to preserve
integrity, the contributor is always responsible for overseeing the merge on a
local **clone**.

![]({% include asset.html path="images/atlassian_after_merge.svg" %}){:width="50%" style="border: none; box-shadow: none;"}  
*[Image][using-branches] by Atlassian / [CC BY]*
{:.captioned}

[using-branches]: https://www.atlassian.com/git/tutorials/
[comparing-workflows]: https://www.atlassian.com/git/tutorials/comparing-workflows
[syncing]: https://www.atlassian.com/git/tutorials/syncing/git-pull
[CC BY]: http://creativecommons.org/licenses/by/2.5/au/
