---
---

## Reproducible Pipeline

The result of reproducible research is more than a published paper, it includes
the whole data-to-document **pipeline**. In a typical socio-environmental
synthesis project, a finished pipeline includes the following
steps:

===

1. Aquire raw data from online repository.

1. Extract, transform, and load data into storage for analysis.

1. Perform data analysis (e.g. model inference) and visualization.

1. Update documentation and reports.

1. Publish results, including reports, data and code/software.

===

A UC Berkeley professor who is a strong advocate for open science, [Carl
Boettiger](http://www.carlboettiger.info), has released several reproducible
pipelines on [GitHub](http://github.com/cboettig). For example, check out his
work leading up to the paper ["Pretty Darn Good
Control"](https://doi.org/10.1890/15-0236) in the project
[pdg_control](http://github.com/cboettig/pdg_control).

===

## Workflow vs. Pipeline (a weak analogy)

*Workflow* describes how your team collaboratively creates the code, software
environment and integrations that comprise the *pipeline*. By analogy to a physical pipeline that moves raw material to finished product, your workflow involves everything from drafting plans to testing the product.

===

Collaborative workflows require communication---developing a pipeline under
version control facilitates it.

===

## Keys to making reproducibility easier

1. Be consistent throughout the research data process in naming files and directories, etc.

2. Use machine and human readable file names  
   * Use "_" and "-" to delimit words in file names; don't use spaces or capital letters
   * Don't use special characters ($@&*%) or punctuation
   * Use names that are informative and descriptive to human users

3. Use one directory/repository for one project

4. Separate code from data

5. Use README files
   * Document your repository with descriptions of the contents and purpose of the files
   * Describe how the files relate to one another





