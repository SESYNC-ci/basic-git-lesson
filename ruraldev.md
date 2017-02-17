# Introduction

 - goals
 - specific objectives
 - status
   - using the etherpad chat for ??? or !$&%*#
   - can log in to rstudio.sesync.org / get password at pwm.sesync.org
 
# Collaborative Workflow

# Data Pipeline

 - scripting as much as possible
 - push button re-analysis
 
# Version Control Principles

 - origin belongs to no one
 - clones belong to users
 - ingest existing commits (on your clone) before sharing your commits (on the origin) 

 - tree of commits
 - source / "working directory" is just the view of the project at a point in the tree
 - Ian view source at different commits
 - the repository is the whole tree, which is all the history
 
# Bitbucket Walk-through

 - overview, source
 
 - commits
   - All create new files on bb
   - view commit tree
   - Ian pull, merge commit and push out of view
   - understand diverging branches and the merge commit

 - issues, settings
 - .gitignore

# RStudio Walk-through

 - project from version control, use https
   - git config user.email icarroll@umd.edu
 - modify line - Ian first add contact info
 - push
 - everyone pull to get latest commits

 - push rejection
   - edit line to match mine
   - save and commit with a short message
   - everyone try to push, only one will be successful
 
 - merge conflicts
   - Ian attempt to re-order participants
   - pull -> merge conflict
   - commit and push

# Resource Diagram

 - /nfs/ruraldev-data = files.sesync.org/pydio:ruraldev
 - rstudio.sesync.org
 - Home on rstudio.sesync.org
 - bitbucket.org
 
# ruraldev team

 - Create a new repository in the mozambique project
 - separate the code from the data

# Local Software Installations

 - git
 - R
 - RStudio
 - clone
 - data_root
