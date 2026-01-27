Process Management

    ps aux → Show all running processes

    ps -ef → Full process listing (Unix style)

    top → Real-time CPU and memory usage

    htop → Enhanced interactive process viewer

    kill <PID> → Gracefully stop a process

    kill -9 <PID> → Force kill a process

    pkill <name> → Kill process by name

    pgrep <name> → Find PID by process name

    nice -n 10 <cmd> → Start process with lower priority

    renice <priority> <PID> → Change running process priority

    jobs → Show background jobs

    bg → Resume job in background

    fg → Bring job to foreground

2. File System & Disk

    ls -lah → List files with size and permissions

    cd <dir> → Change directory

    pwd → Show current directory

    mkdir <dir> → Create directory

    rm -rf <dir> → Remove directory recursively (dangerous)

    cp -r src dest → Copy files/directories

    mv src dest → Move or rename file

    find / -name file.txt → Search for file

    du -sh * → Show folder sizes

    df -h → Show disk usage

    chmod 755 file → Change file permissions

    chown user:group file → Change file ownership

    cat file → Print file content

    less file → View file page by page

    tail -f app.log → Follow live log output

3. Networking Troubleshooting

    ip addr → Show IP addresses

    ip route → Show routing table

    ping google.com → Test network connectivity

    curl http://example.com → Test HTTP endpoint

    dig google.com → DNS lookup

    ss -tulnp → Show listening ports

    netstat -tulnp → Legacy port check

    traceroute google.com → Trace network path

    nc -zv host port → Test port connectivity

4. System & Service Management

    systemctl status <service> → Check service status

    systemctl start <service> → Start service

    systemctl restart <service> → Restart service

    journalctl -u <service> → View service logs

    journalctl -xe → View recent system errors

    uptime → Show system uptime

    free -h → Show memory usage

    whoami → Show current user

    id → Show user/group IDs

    uname -a → Show kernel information