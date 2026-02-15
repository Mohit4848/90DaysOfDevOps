1) 1️) What is a branch in Git?

A branch is a movable pointer to a commit.
It allows you to develop features or fixes independently from the main codebase.

2️) Why use branches instead of committing everything to main?

Prevent breaking production code

Isolate features and experiments

Enable parallel development

Support collaboration workflows

3️) What is HEAD in Git?

HEAD is a pointer to the current commit you are working on.
Usually it points to the latest commit of the current branch.

4️) What happens when you switch branches?

Your working directory changes to match that branch’s last commit.

Files added in one branch may disappear if they don’t exist in another branch.

Uncommitted changes may block switching.

Difference Between git fetch and git pull

git fetch

Downloads changes but does NOT merge.

git pull

Fetch + merge in one command.

5) Clone vs Fork

Clone clones the public repository in your local using the git clone command with your github link.

Fork forks another repository of someone in your account so that you can make changes on that repository without chnaging the actual repository of the owner.

Clone → when you have direct access.
Fork → when contributing to someone else’s project.