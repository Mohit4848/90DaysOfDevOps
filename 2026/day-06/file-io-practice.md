mohit@ASUS-TUF-A15:~$ mkdir Documents
mohit@ASUS-TUF-A15:~$ cd Document
-bash: cd: Document: No such file or directory
mohit@ASUS-TUF-A15:~$ cd Documents
mohit@ASUS-TUF-A15:~/Documents$ touch notes.txt
mohit@ASUS-TUF-A15:~/Documents$ "Hi" > notes.txt
Hi: command not found
mohit@ASUS-TUF-A15:~/Documents$ Hi > notes.txt
Hi: command not found
mohit@ASUS-TUF-A15:~/Documents$ echo "Hi" > notes.txt
mohit@ASUS-TUF-A15:~/Documents$ echo "My name is Mohit" >> notes.txt
mohit@ASUS-TUF-A15:~/Documents$ vim notes.tzt
mohit@ASUS-TUF-A15:~/Documents$ vim notes.txt
mohit@ASUS-TUF-A15:~/Documents$ echo "I am a DevOps Learner" > notes.txt
mohit@ASUS-TUF-A15:~/Documents$ vim notes.txt
mohit@ASUS-TUF-A15:~/Documents$ echo "Hi" > notes.txt
mohit@ASUS-TUF-A15:~/Documents$ echo "My name is Mohit" >> notes.txt
mohit@ASUS-TUF-A15:~/Documents$ echo "I am a DevOps Learner" >> notes.txt
mohit@ASUS-TUF-A15:~/Documents$ echo "I am taking live classes on DevOps every weekend from 9am to 12pm" >> notes.txt
mohit@ASUS-TUF-A15:~/Documents$ cat notes.txt
Hi
My name is Mohit
I am a DevOps Learner
I am taking live classes on DevOps every weekend from 9am to 12pm
mohit@ASUS-TUF-A15:~/Documents$ head notes.txt
Hi
My name is Mohit
I am a DevOps Learner
I am taking live classes on DevOps every weekend from 9am to 12pm
mohit@ASUS-TUF-A15:~/Documents$ head notes.txt -n 2
Hi
My name is Mohit
mohit@ASUS-TUF-A15:~/Documents$ tail notes.txt
Hi
My name is Mohit
I am a DevOps Learner
I am taking live classes on DevOps every weekend from 9am to 12pm
mohit@ASUS-TUF-A15:~/Documents$ tail notes.txt -n 2
I am a DevOps Learner
I am taking live classes on DevOps every weekend from 9am to 12pm
mohit@ASUS-TUF-A15:~/Documents$ echo "Tomorrow, my live class with my mentor Shubham Bhaiya aka DevOps wale bhaiya is from 9am to 12pm" tee notes.txt
Tomorrow, my live class with my mentor Shubham Bhaiya aka DevOps wale bhaiya is from 9am to 12pm tee notes.txt
mohit@ASUS-TUF-A15:~/Documents$ cat notes.txt
Hi
My name is Mohit
I am a DevOps Learner
I am taking live classes on DevOps every weekend from 9am to 12pm
mohit@ASUS-TUF-A15:~/Documents$ echo "Tomorrow, my live class with my mentor Shubham Bhaiya aka DevOps wale bhaiya is from 9am to 12pm" | tee notes.txt
Tomorrow, my live class with my mentor Shubham Bhaiya aka DevOps wale bhaiya is from 9am to 12pm
mohit@ASUS-TUF-A15:~/Documents$ cat notes.txt
mohit@ASUS-TUF-A15:~/Documents$ tee --help
Usage: tee [OPTION]... [FILE]...
Copy standard input to each FILE, and also to standard output.

  -a, --append              append to the given FILEs, do not overwrite
  -i, --ignore-interrupts   ignore interrupt signals
  -p                        diagnose errors writing to non pipes
      --output-error[=MODE]   set behavior on write error.  See MODE below
      --help     display this help and exit
      --version  output version information and exit

MODE determines behavior with write errors on the outputs:
  'warn'         diagnose errors writing to any output
  'warn-nopipe'  diagnose errors writing to any output not a pipe
  'exit'         exit on error writing to any output
  'exit-nopipe'  exit on error writing to any output not a pipe
The default MODE for the -p option is 'warn-nopipe'.
The default operation when --output-error is not specified, is to
exit immediately on error writing to a pipe, and diagnose errors
writing to non pipe outputs.

GNU coreutils online help: <https://www.gnu.org/software/coreutils/>
Report any translation bugs to <https://translationproject.org/team/>
Full documentation <https://www.gnu.org/software/coreutils/tee>
or available locally via: info '(coreutils) tee invocation'
mohit@ASUS-TUF-A15:~/Documents$ echo "Tomorrow, my live class with my mentor Shubham Bhaiya aka DevOps wale bhaiya is from 9am to 12pm" | tee --append notes.txt
Tomorrow, my live class with my mentor Shubham Bhaiya aka DevOps wale bhaiya is from 9am to 12pm
mohit@ASUS-TUF-A15:~/Documents$ cat notes.txt
Hi
My name is Mohit
I am a DevOps Learner
I am taking live classes on DevOps every weekend from 9am to 12pm
Tomorrow, my live class with my mentor Shubham Bhaiya aka DevOps wale bhaiya is from 9am to 12pm