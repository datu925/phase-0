#How does tracking and adding changes make developers' lives easier?

It allows developers to more easily ensure they are working with the most up-to-date code, revert to previous versions if some changes break the code, and generally makes it easier for many developers to work on a project in parallel.

#What is a commit?

A commit is in some sense like saving a file(s) - you preserve a snapshot of it that you can revisit at a later time. You typically include a message describing the changes made since the previous commit.

#What are the best practices for commit messages?

Use present-tense imperative forms of verbs. Stay under 50 characters for the "title", and wrap text around 72-76 characters per line in the body. Using the title only is fine for microcommits, though longer writeups make more sense for larger commits.

#What does the HEAD^ argument mean?

That refers to the most recent commit (HEAD w/o the ^ is the current commit). So that would be used to reference a previous state of your files.

#What are the 3 stages of a git change and how do you move a file from one stage to the other?

I didn't actually see this in any of the material we were presented with, so I had to do some outside research (I think I found the right thing, but we'll see...). But could have just missed it.

The three stages are modified, staged, and committed. You make changes to a file or add it; it's been modified, but git is not planning to do anything with it. If you use "git add ..." and name the file or the folder, you move it to the staged state, when git has not committed the file, but the file is planned to be committed during the next commit. And then by using "git commit ..." with either the -m or -v options and messages, you push it to the last step, when it is committed and now fully updated in your local repo.

#Write a handy cheatsheet of the commands you need to commit your changes?

This is a full list of everything involved throughout the entire process, including getting your code up to GitHub. That was my reading of the question, though if this question is really only about the commit process it'll be a subset of the following commands.

git pull origin master (make sure you have correct version of master)
git checkout -b new_branch (make a new branch to work on)
git add FILE/WILDCARD (add files to be committed)
git commit -m "message" (commit)
git checkout master (switch to master)
git pull origin master (pull up-to-date version of master)
git checkout new_branch (switch to branch)
git merge master (merge any changes from master to branch)
get push origin new_branch (push branch up to remote repo)
do the pull request through GitHub; accept merge; delete old branch
git checkout master (switch to master)
git pull origin master (get new version of master)
git branch -d new_branch (delete unnecessary old branch)

The piece that feels slightly redundant here is getting the most up-to-date master both at the beginning and then before pushing the branch up to GitHub. If we're reviewing the pull request anyway, isn't that a good time to reconcile any differences between the remote and local versions of the master?

Also, if it takes the pull request a while to get reviewed and finalized, and other changes are being made to the master, aren't we going to get the potential for merge conflict anyway?

#What is a pull request and how do you create and merge one?

You create a pull request by pushing your branch code from your local repo up to GitHub (after ensuring you have the right version of the master and merging that with the branch), then clicking the pull request button. Then you go through the process of reviewing the merge w/ other devs, commenting, etc., then you confirm the merge and delete the branch. Then pull new master down to your local repo.

#Why are pull requests preferred when working with teams?

They allow multiple developers to get their eyes on code before it's merged with the master, so all code is "peer-reviewed" in some sense before it gets incorporated.