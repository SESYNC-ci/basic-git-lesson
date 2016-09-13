---
---

## RStudio Projects

This software is an example of an *integrated development environment* and focuses on

1. Creating projects that use the R programming language, and 
1. Running R language commands or  programs in the R interpreter.

R is both a **language** and an **interpreter**.

<!--split-->

## Integration with `git`

RStudio provides convenient access to the core tools provided by `git`, so any project can also be a repository.

Under the File menu, create a new project from a remote version control repository.

![]({{ site.baseurl }}/images/new_project.png){:width=60%}

<!--split-->

## Files under version control

Software is written in plain text, and version control is design for software development. A scripted workflow relies heavilly on plain text files, but may include different file types for figures or data.

For this reason, a plain text editor is a core element of the IDE. The editor in RStudio is good for any kind of text documents: you could edit R scripts, C++ code, LaTeX documents, or even CSV files.

<!--split-->

## README.md

To begin making this project your own, modify the README. Tell us something about why you're here!

~~~
# SESYNC Computational Synthesis Institute

Goals

- ...
~~~
{:.text-document title="README.md"}

The ".md" extension stands for "markdown", which is a syntax for simple plain text "formatting".
