Task 1:-
Linux:-

Navigate file system	Can do confidently
Manage processes	Can do confidently
Work with systemd	Need to revisit
Edit text files	Can do confidently
Troubleshoot CPU/memory/disk	Can do confidently
Explain file system hierarchy	Need to revisit
Create users/groups	Can do confidently
chmod (numeric/symbolic)	Can do confidently
chown/chgrp	Can do confidently
LVM management	Need to revisit
Network troubleshooting	Can do confidently
DNS/IP/Subnets explanation	Need to revisit

Shell Scripting:- 

Variables & arguments	Confident
If/else & case	Confident
Loops	Confident
Functions	Confident
Text processing (grep/awk/sed)	Need to revisit
Error handling (set -euo pipefail)	Confident
Crontab scheduling	Need to revisit

Git and Github:-

Basic workflow	Confident
Branching	Confident
Merge & rebase	Need to revisit
Stash	Confident
Cherry-pick	Confident
Reset vs revert	Need to Revisit
Branching strategies	Confident
GitHub CLI	Need to revisit

Task 2:- 

Re-learned:

PV → physical disk

VG → pool of storage

LV → usable logical partition

Resize without rebooting

Crontab:-
0 3 * * * /path/script.sh or any script that you want to schedule.
minute hour day month weekday

Merge and Rebase:-
Merge merges all the commits of one branch to another with showing every commit messages.
Rebase merges all the commits of one branch to another with showing single commit message altogether.

Task 3:-
1️) chmod 755 script.sh

Owner: rwx
Group: r-x
Others: r-x
Executable for everyone.

2️) Process vs Service
Process → running program instance
Service → managed background process (often via systemd)

3️) Find process using port 8080
ss -tulpn | grep 8080
or
lsof -i :8080

4️) set -euo pipefail
-e → exit on error
-u → undefined variable error
pipefail → fail if any pipe command fails
Safer scripts.

5️) reset --hard vs revert
reset --hard → rewrites history, deletes commits
revert → creates new commit that undoes changes

6️) Branching strategy for 5 devs shipping weekly?
GitHub Flow.
Simple and fast.

7️) git stash
Temporarily saves uncommitted work.
Used when switching context.

8️) Schedule script at 3 AM daily
0 3 * * * /path/script.sh

9️) fetch vs pull
fetch → download only
pull → fetch + merge

10) LVM
Logical Volume Manager allows flexible disk management.
Resize volumes without downtime.
Better than fixed partitions.

Task 4:-
Everything is upto date except some day's assignment but I will complete them this week.

Task 5:-
Teaching Git Branching to a Beginner

Git branching allows you to create a separate line of development without affecting the main code. Imagine you are working on a new feature — instead of changing the main code directly, you create a branch. You can safely experiment, make commits, and test your changes. Once everything works, you merge the branch back into main. This prevents breaking production code and allows multiple developers to work simultaneously.