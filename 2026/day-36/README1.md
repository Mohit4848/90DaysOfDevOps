# Flask Docker Project

## Features
- Flask API
- PostgreSQL Database
- Dockerized with multi-stage build (for now it's normal dockerfile because I was having issues with multi-stage. App was not able to deploy.)
- Non-root container (Same thing. Having problem while upping the container. Not able to find flask env, dbuser.)
- Healthchecks
- Persistent volumes

## Run Locally

docker compose up --build

## Environment Variables
See .env file

## Docker Hub
https://hub.docker.com/r/mohit4488/flask-app-web

I will perform this assignment again and troubleshoot and fix the multi stage dockerfile error and non-root user container.