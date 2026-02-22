Task 1:-
What is a Container?
A container is a lightweight, isolated environment that runs an application with all its dependencies.
It packages:
Application code
Runtime
Libraries
System tools

Containers solve:
“It works on my machine” problem.

Why Do We Need Containers?
Consistent environments across dev/test/prod
Faster deployments
Lightweight compared to VMs
Easy scaling
Microservices-friendly

Containers vs Virtual Machines
Feature	                      Containers	                 Virtual Machines
OS	                          Share host kernel	             Full guest OS
Boot Time	                  Seconds	                     Minutes
Size	                      MBs	                         GBs
Performance	                  Near-native	                 Slight overhead
Isolation	                  Process-level	                 Full hardware-level

Containers use OS-level virtualization.
VMs use hardware virtualization.

Docker Architecture
Docker has 4 main components:
Docker Client:-
CLI (docker run)
Sends commands

Docker Daemon (dockerd):-
Runs in background
Builds and manages containers

Docker Images:-
Read-only templates
Used to create containers

Docker Registry (Docker Hub):-
Stores images
Public/private repos

Docker Architecture in Simple Words

When you use command like:-

docker run <any_service>

The flow of the docker is:-
Client → Daemon → Pull image from Registry → Create container → Run that container