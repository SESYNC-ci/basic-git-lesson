---
---

## RStudio Projects

This software is an example of an *integrated development environment* and focuses on

1. Editing scripts written in the R language.
1. Running R language commands or programs in the R interpreter.
1. Helping to manage many components of a collaborative project using version control.

===

## Integration with `git`

RStudio provides convenient access to the core tools provided by `git`, so any project can also be a repository.

Under the File menu, create a new project from a remote version control repository.

![]({{ site.baseurl }}/images/new_project.png){:width=60%}

===

## Files under version control

Software is written in plain text, and version control is design for software development. A scripted workflow relies heavilly on plain text files, but may include different file types for figures or data.

For this reason, a plain text editor is a core element of the IDE. The editor in RStudio is good for any kind of text documents: you could edit R scripts, NetLogo models, LaTeX documents, Stata scripts, or even CSV files.

===

## Configure git

The `system` function sends a given string directly to the operating system, which uses the `git` program itself to do something we can't do through RStudio. 

~~~
system("git config user.email <bitbucket-email>")
~~~
{:.input}
