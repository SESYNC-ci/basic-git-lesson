---
---

## Working with Collaborators

True collaboration goes deeper than commenting on a final report, but integrated work on a project from start to finish raises workflow challenges. Be it data, a script, or a write-up, who has the most up-to-date version? Will a teammate's work overwrite any of your own? How do I recover the working version of code the PI broke?

A centralized workflow, managed by `git`, helps answer these questions.

+ The **origin** becomes the official up-to-date repo, even if you're work is a few commits ahead.
+ Diverging workflows are reintegrated with a **merge**.
+ The complete project history is available to **checkout**.

What's the catch? It only works with text. We'll address non-textual components of your project later on.

===

The first step to collaborative workflows is granting access to the **origin** of your project.

Introduce yourself to your neighbour, and ask for his/her GitHub username.

![]({{ site.baseurl }}/images/repo_collab.png)
{:.captioned}

Add your neighbour as a collaborator, and **clone** his/her test repo.

~~~
cd %sandbox%
git clone https://github.com/%not-my-username%/test.git not-my-test
cd not-my-test
~~~
{:.input}

===

Edit the README.md from your neighbour's repo, by adding a fourth bullet point.

~~~
# Welcome to My Project

This project includes the following:
+ nothing
+ zero
+ nada
+ %your bullet point%
~~~
{:.text-document title="README.md"}

===

Now do a commit & push. Note that we have tucked the "add" step into the commit with the argument "a".

~~~
git commit -am 'Add important bullet to README.md'
~~~
{:.input}

~~~
[master %hash%] amazing
 1 file changed, 1 insertion(+), 1 deletion(-)
~~~
{:.output}

~~~
git push
~~~
{:.input}

~~~
Username for 'https://github.com': %username%
Password for 'https://%username%@github.com': 
Counting objects: 3, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 353 bytes | 0 bytes/s, done.
Total 3 (delta 0), reused 0 (delta 0)
To https://github.com/itcarroll/test.git
   %hash%..%hash%  master -> master
~~~
{:.output}

===

The **origin** for your local "test" repo now has a commit you don't have locally -- the one your collaborator pushed. Let's compound the problem by adding a local commit that your **origin** doesn't have. Change the title of your project in README.md in your local test repo.

~~~
# Welcome to My *Amazing* Project

This project includes the following:
+ nothing
+ zero
+ nada
~~~
{:.text-document title="README.md"}

===

Try the usual routine: commit & push.

~~~
cd %sandbox%
cd test
git commit -am 'amazing'
~~~
{:.input}

~~~
[master %hash%] amazing
 1 file changed, 1 insertion(+), 1 deletion(-)
~~~
{:.output}

~~~
git push
~~~
{:.input}

~~~
To https://github.com/%username%/test.git
 ! [rejected]        master -> master (fetch first)
 error: failed to push some refs to 'https://github.com/%username%/test.git'
 hint: Updates were rejected because the remote contains work that you do
 hint: not have locally. This is usually caused by another repository pushing
 hint: to the same ref. You may want to first integrate the remote changes
 hint: (e.g., 'git pull ...') before pushing again.
 hint: See the 'Note about fast-forwards' in 'git push --help' for details.
~~~
{:.output}

Take a moment to read the message -- it gives a good explanation of what just happened.

===

### Take the Hint!

~~~
git pull
~~~
{:.input}

~~~
remote: Counting objects: 3, done.
remote: Compressing objects: 100% (2/2), done.
remote: Total 3 (delta 1), reused 0 (delta 0), pack-reused 0
Unpacking objects: 100% (3/3), done.
From https://github.com/%username%/test
   15bc488..26c2dcd  master     -> origin/master
   Auto-merging README.md
   Merge made by the 'recursive' strategy.
    README.md | 1 +
	 1 file changed, 1 insertion(+)
~~~
{:.output}

The message tells you about any changes made by this **merge commit**, which seamlessly integrates changes to the same file by multiple authors.

===

### Merge Commits

![]({{ site.baseurl }}/images/atlassian_merge.svg){:width="30%"}  
*[Image][using-branches] by Atlassian / [CC BY]*
{:.captioned}

===

### Checkout the Log

Version control gives you access to the state of the repository at any commit. To view the history, look at the log.

~~~
cd %sandbox%
cd test
git log
~~~
{:.input}

~~~
commit 0517b3b2258e6cce76770646f175dc8abfe9e148
Merge: 8612809 26c2dcd
Author: Ian Carroll <icarroll@sesync.org>
Date:   Tue Jul 26 14:53:22 2016 -0400

    Merge branch 'master' of https://github.com/itcarroll/test
	
commit 8612809b6eeea263a853783cf4c37a6862a31d22
Author: Ian Carroll <icarroll@sesync.org>
Date:   Tue Jul 26 13:48:57 2016 -0400

    amazing
~~~
{:.output}

See how helpful a concise & descriptive commit messages would be?

===

Let's investigate a commit we are not so sure about.

~~~
git show 8612
~~~
{:.input}

~~~
commit 8612809b6eeea263a853783cf4c37a6862a31d22
Author: Ian Carroll <icarroll@sesync.org>
Date:   Fri Jun 24 13:48:57 2016 -0400

    amazing
	
diff --git a/README.md b/README.md
index 521cb5d..24a865d 100644
--- a/README.md
+++ b/README.md
@@ -1,4 +1,4 @@
-# Welcome to My Project
+# Welcome to My Amazing Project

This project does the following:
 + nothing
~~~
{:.output}

~~~
git revert --no-edit 8612
~~~
{:.input}

~~~
[master b0aaef0] Revert "amazing"
 1 file changed, 1 insertion(+), 1 deletion(-)
~~~
{:.output}


[using-branches]: https://www.atlassian.com/git/tutorials/using-branches
[CC BY]: http://creativecommons.org/licenses/by/2.5/au/
