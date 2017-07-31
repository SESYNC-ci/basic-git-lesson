# create a shortcut to your data

file.symlink(
  from = ...,
  to = 'data'
)

# confirm that data is accessible
file.exists('data/README.md')
