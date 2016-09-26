---
---

## Save your work

Do save the `README.md` file.

But I mean *really* save your work, by commiting it to your project with a version control system (that's `git`!).

1. Go to the `git` tab in RStudio
1. Select `commit` to open the "Review Changes" window
1. Select the file(s) you want to commit.
1. Enter a descriptive message about the commit.
1. Commit!

<!--split-->

## Create a GitHub repository

Create a new repository on your GitHub page, name it whatever you like, but leave it empty (no README!).

![]({{ site.baseurl }}/images/new_repo.png){:width="60%"}  
{:.captioned}

Once it's created, find the "Clone or download" URL beginning with "https://".

<!--split-->

## Configure git

The `system` function in `lesson-1.R` sends the string directly to the operating system, which uses the `git` program itself to do something we can't do through RStudio. 

~~~
# Configure git

system("git config --global user.name '%Full Name%'")
system("git config --global user.name %email%")
~~~
{:.text-document title="lesson-1.R"}

Question
: Why did I put spaces around my name but not my e-mail

Answer
: A space usually means the end of a string, the quotes are an alternative way to demarcate the bounds of a string.

<!--split-->

## Change origin repo

Open "Tools" > "Project Options" > "Git/SVN", notice that the orign is the SESYNC-CI organization's URL.

~~~
# Set a new origin URL

system("git remote set-url origin https://github.com/%username%/%repo%")
~~~
{:.text-document title="lesson-1.R"}

<!--split-->

## Push

Open the "Review Changes" window again and notice that your branch is ahead of origin/master! Push those commit(s) to your GitHub repo.
