---
---

## Files under version control

A scripted pipeline relies heavily on plain text files (the scripts), but may include different file types for figures or even some data. Any file in this directory that is under version control is monitored for differences from the committed state of the project. Files must be added to at least one commit before they are tracked.

===

## Integrations not under version control

The most common pipeline integration is shared data storage.

- Local area network file share (e.g. Z:\\\\...)
- Cloud storeage (e.g. Dropbox, Google Drive)
- Database (e.g. lab PostgreSQL server)

===

## Path to shared data

The best practice is to script the creation of links to shared data files, and any other integrations. For example, the following R script sets up a shortcut to the location of your data files (e.g. in a shared folder) as a relative path inside your repository.

~~~r
# create a shortcut to your data

file.symlink(
  from = ...,
  to = 'data'
)
    
# confirm that data is accessible
file.exists('data/README.md')
~~~
{:.text-document title='{{ site.handouts[1] }}'}
