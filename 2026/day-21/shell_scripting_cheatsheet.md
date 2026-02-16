1) Basics 
#!/bin/bash - It defines interpreter. It is required for ./script.sh.

for running a script we first give execute permission using chmod +x script.sh and then we run the file using ./script.sh or bash script.sh.

Comments - single line - #comment
           Inline - echo "Hello dosto"

Variables - Name="Mohit"
echo $Name - It expands the variable.
echo "$Name" - It prints the value inside variable.
echo '$Name' - It consider the thing inside the single quote as literal string.

Read Input - read -p "Enter name: " Name

Arguments - $0 - script name 
            $1 - argument 1
            $2 - argument 2
            $# - number of arguments
            $@ - all arguments 

2) Operators and COnditionals

String Comparison
[ "$a" = "$b" ]
[ "$a" != "$b" ]
[ -z "$a" ]  # Empty
[ -n "$a" ]  # Not empty

Integer Comparison
[ $a -eq 5 ]
[ $a -ne 5 ]
[ $a -lt 5 ]
[ $a -gt 5 ]
[ $a -le 5 ]
[ $a -ge 5 ]

File Tests
[ -f file ]  # File exists
[ -d dir ]   # Directory exists
[ -e file ]  # Exists
[ -r file ]  # Readable
[ -w file ]  # Writable
[ -x file ]  # Executable
[ -s file ]  # Not empty

If Syntax
if [ condition ]; then
    command
elif [ condition ]; then
    command
else
    command
fi

Logical Operators

cmd1 && cmd2   # Run if success
cmd1 || cmd2   # Run if failure either 1st command runs or 2nd command runs 
! command      # IT inverts the exit status of the command

Case Statement

case "$var" in
    start) echo "Starting" ;;
    stop) echo "Stopping" ;;
    *) echo "Invalid" ;;
esac

3) Loops 
for loop - 
for i in apple banana mango; do
    echo $i
done

for loop(C-style)
for ((i=1; i<=5; i++)); do
    echo $i
done

while loop
while [ $x -gt 0 ]; do
    echo $x
    ((x--))
done

until loop
until [ $x -eq 0 ]; do
    echo $x
    ((x--))
done

Loop Control
break
continue

Loop file 
for file in *.log; do
    echo $file
done

Loop command output
ls | while read line; do
    echo $line
done

4) Functions
Define function
greet() {
    echo "Hello $1"
}

Call Function
greet "DevOps"

REturn Value 
return 0      # Exit code
echo "value"  # Return data

Local Variables 
my_func() {
    local var="inside"
}

5) Text Processing
grep 
grep "error" file
grep -i "error" file
grep -r "error" .
grep -c "error" file
grep -n "error" file
grep -v "info" file
grep -E "error|fail" file

sed
sed 's/old/new/g' file
sed -i 's/foo/bar/g' file
sed '3d' file

awk 
awk '{print $1}' file
awk -F: '{print $1}' /etc/passwd
awk 'BEGIN {print "Start"}'

cut
cut -d: -f1 /etc/passwd

sort
sort file
sort -n file
sort -r file
sort -u file

uniq
uniq file
uniq -c file

Tr
tr 'a-z' 'A-Z'
tr -d '\n'

wc
wc -l file
wc -w file
wc -c file

Head/tail
head -n 10 file
tail -n 10 file
tail -f file

6) Useful One-Liners

Delete files older than 7 days
find . -type f -mtime +7 -delete

Count lines in all logs
wc -l *.log

Replace string in multiple files
sed -i 's/old/new/g' *.conf

Check if service running
systemctl is-active --quiet nginx && echo "Running"

Monitor disk usage
df -h | awk '$5+0 > 80 {print $0}'

Real-time error monitoring
tail -f app.log | grep --line-buffered ERROR

7) Error Handling and Debugging

Exit Codes
exit 0  # success
exit 1  # error
echo $? # last status

Strict Mode
set -e
set -u
set -o pipefail
set -x


-e → exit on error

-u → undefined vars fail

pipefail → fail if pipe part fails

-x → debug trace

Trap
trap 'echo "Cleaning up..."' EXIT