---
---

## What about Data?

The scripts executed in your pipeline are plain text files, but the project
may need other assets, such as data, figures, or private configurations.

- Non-text files get little benefit from `git`, and have large costs.
- Large data files should not be version controlled by `git` and usually live outside the repo (as an "integration").
- Private information (e.g., personal data) should not be committed to a public repository.

===

## External Data

The most common pipeline integration is shared data storage.

- Local area network file share (e.g. "Z:\\\\...")
- Cloud storage (e.g. Dropbox, Google Drive)
- Database (e.g. a PostgreSQL server)

===

## Link to the Data

One good practice is creating "symbolic links" (a.k.a. shortcuts) to data files
that live outside a project repo; these let your code use paths that point
inside the repo for data.

~~~r
file.symlink(
  from = ...,
  to = 'data'
)
~~~
{:.input title="{{ site.data.lesson.handouts[0] }}"}

The shortcut works like a normal path to your data---which could be risky on
certain operating systems or early versions (before 1.6) of "git". It is
sometimes possible to add all your data to a commit by accident with `git add
.`. To avoid this, update git or "ignore" all files and folders below `data/` by
adding the line `/data/**` to the ".gitignore" file in your repo. The leading
`/` refers to the root of the git repository, not to the root of your
filesystem.
{:.notes}