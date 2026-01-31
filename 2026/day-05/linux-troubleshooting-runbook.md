top 

top - 00:16:05 up 33 min,  1 user,  load average: 0.01, 0.01, 0.00
Tasks:  43 total,   1 running,  42 sleeping,   0 stopped,   0 zombie
%Cpu(s):  0.0 us,  0.0 sy,  0.0 ni,100.0 id,  0.0 wa,  0.0 hi,  0.0 si,  0.0 st
MiB Mem :   3621.2 total,   3029.8 free,    386.8 used,    204.6 buff/cache
MiB Swap:   1024.0 total,   1024.0 free,      0.0 used.   3157.8 avail Mem

    PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND
      1 root      20   0  166944  11904   8064 S   0.0   0.3   0:02.17 systemd
      2 root      20   0    3120   2176   2048 S   0.0   0.1   0:00.03 init-systemd(Ub
      6 root      20   0    3136   1792   1792 S   0.0   0.0   0:00.00 init
     66 root      19  -1   64220  18432  17664 S   0.0   0.5   0:00.61 systemd-journal
     92 root      20   0   22936   5632   4480 S   0.0   0.2   0:01.49 systemd-udevd
     95 systemd+  20   0   25672  13052   8832 S   0.0   0.4   0:00.32 systemd-resolve
     96 systemd+  20   0   89364   7040   6272 S   0.0   0.2   0:00.36 systemd-timesyn
    183 root      20   0    4308   2688   2432 S   0.0   0.1   0:00.00 cron
    185 message+  20   0    8688   4480   3968 S   0.0   0.1   0:00.27 dbus-daemon
    190 root      20   0   30136  18432   9856 S   0.0   0.5   0:00.25 networkd-dispat
    191 syslog    20   0  222404   5120   4480 S   0.0   0.1   0:00.12 rsyslogd
    194 root      20   0   15324   7424   6528 S   0.0   0.2   0:00.26 systemd-logind
    216 root      20   0    3240   2176   2048 S   0.0   0.1   0:00.00 agetty
    218 root      20   0    3196   2176   2048 S   0.0   0.1   0:00.00 agetty
    225 root      20   0  107164  21632  13440 S   0.0   0.6   0:00.18 unattended-upgr
    278 root      20   0    3124    900    768 S   0.0   0.0   0:00.00 SessionLeader
    280 root      20   0    3140   1032    896 S   0.0   0.0   0:00.13 Relay(285)
    285 mohit     20   0    6212   4992   3328 S   0.0   0.1   0:00.19 bash
    289 root      20   0    7532   4992   4096 S   0.0   0.1   0:00.02 login
    327 mohit     20   0   16952   9344   7808 S   0.0   0.3   0:00.17 systemd

df -h 

Filesystem      Size  Used Avail Use% Mounted on
none            1.8G     0  1.8G   0% /usr/lib/modules/6.6.87.2-microsoft-standard-WSL2
none            1.8G  4.0K  1.8G   1% /mnt/wsl
drivers         454G  414G   41G  92% /usr/lib/wsl/drivers
/dev/sdd       1007G  1.5G  955G   1% /
none            1.8G   76K  1.8G   1% /mnt/wslg
none            1.8G     0  1.8G   0% /usr/lib/wsl/lib
rootfs          1.8G  2.7M  1.8G   1% /init
none            1.8G  540K  1.8G   1% /run
none            1.8G     0  1.8G   0% /run/lock
none            1.8G     0  1.8G   0% /run/shm
none            1.8G   96K  1.8G   1% /mnt/wslg/versions.txt
none            1.8G   96K  1.8G   1% /mnt/wslg/doc
C:\             454G  414G   41G  92% /mnt/c
tmpfs           363M  8.0K  363M   1% /run/user/1000

free -h

               total        used        free      shared  buff/cache   available
Mem:           3.5Gi       387Mi       3.0Gi       3.0Mi       204Mi       3.1Gi
Swap:          1.0Gi          0B       1.0Gi

journalctl -u nginx

Feb 01 00:04:24 ASUS-TUF-A15 systemd[1]: Starting A high performance web server and a reverse proxy server...
Feb 01 00:04:24 ASUS-TUF-A15 systemd[1]: Started A high performance web server and a reverse proxy server.
Feb 01 00:10:25 ASUS-TUF-A15 systemd[1]: Stopping A high performance web server and a reverse proxy server...
Feb 01 00:10:25 ASUS-TUF-A15 systemd[1]: nginx.service: Deactivated successfully.
Feb 01 00:10:25 ASUS-TUF-A15 systemd[1]: Stopped A high performance web server and a reverse proxy server.
Feb 01 00:10:49 ASUS-TUF-A15 systemd[1]: Starting A high performance web server and a reverse proxy server...
Feb 01 00:10:49 ASUS-TUF-A15 systemd[1]: Started A high performance web server and a reverse proxy server.
Feb 01 00:11:11 ASUS-TUF-A15 systemd[1]: Stopping A high performance web server and a reverse proxy server...
Feb 01 00:11:16 ASUS-TUF-A15 systemd[1]: nginx.service: Deactivated successfully.
Feb 01 00:11:16 ASUS-TUF-A15 systemd[1]: Stopped A high performance web server and a reverse proxy server.
Feb 01 00:14:15 ASUS-TUF-A15 systemd[1]: Starting A high performance web server and a reverse proxy server...
Feb 01 00:14:15 ASUS-TUF-A15 systemd[1]: Started A high performance web server and a reverse proxy server.

If things were worse, the first thing that I will do is first check the processes that are running using top command. Identify the PID which is process id and then restart that service. Even if it doesn't fix the service, I will check the log using journalctl and act according to it. If disk storage will be full, I will remove all the old logs and then clear the unwanted/ unused packages.