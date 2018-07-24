---
---

## What about Data?

The scripts tha execute your pipeline are plain text files, but the project may include other file types for figures, and possibly even some data sets.

- Non-text files get little benefit from `git`, and have large costs.
- Large data files should be un-tracked, or live elsewhere (as an "integration")

===

## External Data

The most common pipeline integration is shared data storage.

- Local area network file share (e.g. Z:\\\\...)
- Cloud storeage (e.g. Dropbox, Google Drive)
- Database (e.g. a PostgreSQL server)

===

## Link to the Data

One good practice is creating "symbolic links" (a.k.a. shortcuts) to data files
that live outside a project repo, that work when your code looks inside the
repo for data.

~~~r
file.symlink(
  from = ...,
  to = 'data'
)
~~~
{:.input title="Console"}