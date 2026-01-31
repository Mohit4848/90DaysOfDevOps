- Run and record output for **at least 6 commands**
- Include **2 process commands** (`ps`, `top`, `pgrep`, etc.)
- Include **2 service commands** (`systemctl status`, `systemctl list-units`, etc.)
- Include **2 log commands** (`journalctl -u <service>`, `tail -n 50`, etc.)
- Pick **one service on your system** (example: `ssh`, `cron`, `docker`) and inspect it
- Keep it **simple and actionable**

ps aux | head

1 USER       PID %CPU %MEM     VSZ   RSS TTY      STAT START   TIME COMMAND
 2 root         1  0.3  0.3  101820 11548 ?        Ss   20:00   0:00 /sbin/init splash
 3 root         2  0.0  0.0       0     0 ?        S    20:00   0:00 [kthreadd]
 4 root         3  0.0  0.0       0     0 ?        I<   20:00   0:00 [rcu_gp]
 5 root         4  0.0  0.0       0     0 ?        I<   20:00   0:00 [rcu_par_gp]
 6 root         5  0.0  0.0       0     0 ?        I    20:00   0:00 [kworker/0:0-events]
 7 root         6  0.0  0.0       0     0 ?        I<   20:00   0:00 [kworker/0:0H-kblockd]
 8 root         7  0.0  0.0       0     0 ?        I    20:00   0:00 [kworker/u4:0-events_unbound]
 9 root         8  0.0  0.0       0     0 ?        I<   20:00   0:00 [mm_percpu_wq]
10 root         9  0.0  0.0       0     0 ?        S    20:00   0:00 [ksoftirqd/0]

top

top - 20:06:57 up 7 min, 1 user, load average: 0,08, 0,34, 0,23
Tasks: 177 total,   1 running, 176 sleeping,   0 stopped,   0 zombie
%Cpu(s): 0,5 us,  0,7 sy,  0,0 ni, 98,8 id,  0,0 wa,  0,0 hi,  0,0 si,  0,0 st
MiB Mem :  2920,5 total,  1070,2 free,   903,6 used,   946,7 buff/cache
MiB Swap:  1401,6 total,  1401,6 free,     0,0 used.  1843,8 avail Mem 

  PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND
  487 root      20   0  338924  21904  18656 S   2,0   0,7   0:01.57 Network+
  649 onworks   20   0  515012  56816  37680 S   0,3   1,9   0:02.29 Xorg
 1052 onworks   20   0 3876880 318580 117376 S   0,3  10,7   0:07.90 gnome-s+
    1 root      20   0  101820  11548   8420 S   0,0   0,4   0:00.96 systemd
    2 root      20   0       0      0      0 S   0,0   0,0   0:00.00 kthreadd
    3 root       0 -20       0      0      0 I   0,0   0,0   0:00.00 rcu_gp
    4 root       0 -20       0      0      0 I   0,0   0,0   0:00.00 rcu_par+
    5 root      20   0       0      0      0 I   0,0   0,0   0:00.07 kworker+
    6 root       0 -20       0      0      0 I   0,0   0,0   0:00.00 kworker+
    7 root      20   0       0      0      0 I   0,0   0,0   0:00.02 kworker+
    8 root       0 -20       0      0      0 I   0,0   0,0   0:00.00 mm_perc+
    9 root      20   0       0      0      0 S   0,0   0,0   0:00.05 ksoftir+
   10 root      20   0       0      0      0 I   0,0   0,0   0:00.12 rcu_sch+
   11 root      rt   0       0      0      0 S   0,0   0,0   0:00.00 migrati+
   12 root     -51   0       0      0      0 S   0,0   0,0   0:00.00 idle_in+

systemctl status nginx

 nginx.service - A high performance web server and a reverse proxy server
     Loaded: loaded (/lib/systemd/system/nginx.service; enabled; vendor preset: enabled)
     Active: active (running) since Sun 2026-02-01 00:04:24 IST; 9s ago
       Docs: man:nginx(8)
    Process: 1421 ExecStartPre=/usr/sbin/nginx -t -q -g daemon on; master_process on; (code=exited, status=0/>
    Process: 1422 ExecStart=/usr/sbin/nginx -g daemon on; master_process on; (code=exited, status=0/SUCCESS)
   Main PID: 1523 (nginx)
      Tasks: 13 (limit: 4333)
     Memory: 14.4M
        CPU: 141ms
     CGroup: /system.slice/nginx.service
             ├─1523 "nginx: master process /usr/sbin/nginx -g daemon on; master_process on;"
             ├─1525 "nginx: worker process" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "">
             ├─1526 "nginx: worker process" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "">
             ├─1527 "nginx: worker process" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "">
             ├─1528 "nginx: worker process" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "">
             ├─1529 "nginx: worker process" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "">
             ├─1530 "nginx: worker process" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "">
             ├─1531 "nginx: worker process" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "">
             ├─1532 "nginx: worker process" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "">
             ├─1533 "nginx: worker process" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "">
             ├─1534 "nginx: worker process" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "">
             ├─1535 "nginx: worker process" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "">
             └─1536 "nginx: worker process" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "">

Feb 01 00:04:24 ASUS-TUF-A15 systemd[1]: Starting A high performance web server and a reverse proxy server...
lines 1-2

systemctl list-units --type=service --state=running

  UNIT                        LOAD   ACTIVE SUB     DESCRIPTION
  console-getty.service       loaded active running Console Getty
  cron.service                loaded active running Regular background program processing daemon
  dbus.service                loaded active running D-Bus System Message Bus
  getty@tty1.service          loaded active running Getty on tty1
  networkd-dispatcher.service loaded active running Dispatcher daemon for systemd-networkd
  nginx.service               loaded active running A high performance web server and a reverse proxy server
  packagekit.service          loaded active running PackageKit Daemon
  polkit.service              loaded active running Authorization Manager
  rsyslog.service             loaded active running System Logging Service
  systemd-journald.service    loaded active running Journal Service
  systemd-logind.service      loaded active running User Login Management
  systemd-resolved.service    loaded active running Network Name Resolution
  systemd-timesyncd.service   loaded active running Network Time Synchronization
  systemd-udevd.service       loaded active running Rule-based Manager for Device Events and Files
  unattended-upgrades.service loaded active running Unattended Upgrades Shutdown
  user@1000.service           loaded active running User Manager for UID 1000

LOAD   = Reflects whether the unit definition was properly loaded.
ACTIVE = The high-level unit activation state, i.e. generalization of SUB.
SUB    = The low-level unit activation state, values depend on unit type.
16 loaded units listed.

journalctl -u nginx

Feb 01 00:04:24 ASUS-TUF-A15 systemd[1]: Starting A high performance web server and a reverse proxy server...
Feb 01 00:04:24 ASUS-TUF-A15 systemd[1]: Started A high performance web server and a reverse proxy server.

tail -n 20 /var/log/syslog

Feb  1 00:03:54 ASUS-TUF-A15 systemd[1]: Starting Authorization Manager...
Feb  1 00:03:54 ASUS-TUF-A15 polkitd[1116]: started daemon version 0.105 using authority implementation `local' version `0.105'
Feb  1 00:03:54 ASUS-TUF-A15 dbus-daemon[185]: [system] Successfully activated service 'org.freedesktop.PolicyKit1'
Feb  1 00:03:54 ASUS-TUF-A15 systemd[1]: Started Authorization Manager.
Feb  1 00:03:54 ASUS-TUF-A15 dbus-daemon[185]: [system] Successfully activated service 'org.freedesktop.PackageKit'
Feb  1 00:03:54 ASUS-TUF-A15 systemd[1]: Started PackageKit Daemon.
Feb  1 00:04:08 ASUS-TUF-A15 systemd-resolved[95]: Clock change detected. Flushing caches.
Feb  1 00:04:23 ASUS-TUF-A15 systemd[1]: Reloading.
Feb  1 00:04:24 ASUS-TUF-A15 systemd[1]: Configuration file /run/systemd/system/netplan-ovs-cleanup.service is marked world-inaccessible. This has no effect as configuration data is accessible via APIs without restrictions. Proceeding anyway.
Feb  1 00:04:24 ASUS-TUF-A15 systemd[1]: /lib/systemd/system/snapd.service:23: Unknown key name 'RestartMode' in section 'Service', ignoring.
Feb  1 00:04:24 ASUS-TUF-A15 systemd[1]: Reloading.
Feb  1 00:04:24 ASUS-TUF-A15 systemd[1]: Configuration file /run/systemd/system/netplan-ovs-cleanup.service is marked world-inaccessible. This has no effect as configuration data is accessible via APIs without restrictions. Proceeding anyway.
Feb  1 00:04:24 ASUS-TUF-A15 systemd[1]: /lib/systemd/system/snapd.service:23: Unknown key name 'RestartMode' in section 'Service', ignoring.
Feb  1 00:04:24 ASUS-TUF-A15 systemd[1]: Reloading.
Feb  1 00:04:24 ASUS-TUF-A15 systemd[1]: Configuration file /run/systemd/system/netplan-ovs-cleanup.service is marked world-inaccessible. This has no effect as configuration data is accessible via APIs without restrictions. Proceeding anyway.
Feb  1 00:04:24 ASUS-TUF-A15 systemd[1]: /lib/systemd/system/snapd.service:23: Unknown key name 'RestartMode' in section 'Service', ignoring.
Feb  1 00:04:24 ASUS-TUF-A15 systemd[1]: Starting A high performance web server and a reverse proxy server...
Feb  1 00:04:24 ASUS-TUF-A15 systemd[1]: Started A high performance web server and a reverse proxy server.
Feb  1 00:04:39 ASUS-TUF-A15 systemd-resolved[95]: Clock change detected. Flushing caches.
Feb  1 00:04:47 ASUS-TUF-A15 kernel: [ 1292.283047] mini_init (232): drop_caches: 1

