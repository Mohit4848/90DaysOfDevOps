- The core components of Linux (kernel, user space, init/systemd)

The kernel is the core of operating system. It talks directly to hardware(CPU, memory, disk, network). Kernel manages processes, memory, device drivers and file systems. 

User space is where the applications run. Eg. bash, etc. Applications can not access hardware directly. They will interact with the kernel using system calls.

init/systemd is the first process that is started by the kernel. It has PID 1 and is responsible for starting services, managing background processes and handling system boots. Also modern linux uses systemd instead of traditional init.

- How processes are created and managed

Processes are created using fork() which duplicates current process and exec() which loads a new program into memory.
Every process has a PID i.e. Process ID and PPID that is Parent process ID.
Process states are running when the process actively uses CPU, sleeping when it is waiting for an event, stopped, uninterruptible sleep when it is waiting for I/O(disk/network) and zombie when it is finished but not cleaned by parent. Zombie processes happens when child exits but parent doesn't collect exit status.

- What systemd does and why it matters

Systemd starts services at boot. It restart failed services. It manages dependencies and it collects logs via journalctl. Services defined in /etc/systemd/system/

Systemd ensures services auto-start on reboot. It enables service monitoring. It allows restart policies, service isolation and resource control.

5 Linux Commands Used Daily (DevOps):-

ps aux - to view running processes.
top/htop - to monitor CPU and memory.
systemctl status <service_name> - to check the status of a service whether it is running or not.
kill <PID> - to kill a process
ls and cd - to list the files and folder of my current directory and to change directories.