---
---

## Let's `git` Going!

The namesake of GitHub is the command-line-utility `git`. It performs the clone, push and pull procedures just described, and many more. Let's begin by doing some basic configuration.

~~~
git config --global user.name "%name%"
git config --global user.email %email%
git config --global push.default simple
~~~
{:.input}

===

### Clone your repository

~~~
cd %sandbox%
git clone https://github.com/%username%/test.git
~~~
{:.input}

~~~
Cloning into 'test'...
remote: Counting objects: 3, done.
remote: Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
Unpacking objects: 100% (3/3), done.
Checking connectivity... done.
~~~
{:.output}

![]({{ site.baseurl }}/images/repo_url.png)  
**Hint:** copy your repo URL from right here.

~~~
cd test
git status
~~~
{:.input}

~~~
On branch master
Your branch is up-to-date with 'origin/master'.
nothing to commit, working directory clean
~~~
{:.output}

===

### Edit README.md

+ Open README.md in any *text* editor (e.g. notepad or emacs)
+ Add any information the public should see when viewing your repository.
+ Use Markdown syntax for *very* basic formatting.

~~~
# Welcome to My Project

This project includes the following:
+ nothing
+ zero
+ nada
~~~
{:.text-document title="README.md"}

===

Now, check the result of making changes to your repo.

~~~
git status
~~~
{:.input}

~~~
On branch master
Your branch is up-to-date with 'origin/master'.
Changes not staged for commit:
	(use "git add <file>..." to update what will be committed)
	(use "git checkout -- <file>..." to discard changes in working directory)
	
		modified:   README.md
		
no changes added to commit (use "git add" and/or "git commit -a")		
~~~
{:.output}

Commit your changes with a descriptive but short commit message.

~~~
git add .
git commit -m "embellish README.md"
~~~
{:.input}

~~~
[master %hash%] updates
 1 file changed, 8 insertions(+), 1 deletion(-)
~~~
{:.output}

===

Push your commit back to **origin**.

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

Now go check out your README.md on GitHub!
