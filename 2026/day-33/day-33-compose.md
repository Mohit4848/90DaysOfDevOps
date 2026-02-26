Task 1:-

![alt text](image.png)

Task 2:-

![alt text](image-1.png)

![alt text](image-2.png)

docker compose file:- ![alt text](image-3.png)

Compose automatically creates network for you, pulls image, starts container and connects everything all from one file.

Task 3:-

![alt text](image-4.png)

![alt text](image-5.png)

docker compose file:- ![alt text](image-6.png)

Task 4:-

Start detached:
docker compose up -d

View running services:
docker compose ps

View logs (all services):
docker compose logs

Follow logs:
docker compose logs -f

Logs for specific service:
docker compose logs db

Stop without removing:
docker compose stop

Remove everything:
docker compose down

Remove including volumes:
docker compose down -v

Rebuild after changes:
docker compose up -d --build

Task 5:-

![alt text](image-7.png)

![alt text](image-8.png)

![alt text](image-9.png)

.env files:- ![alt text](image-10.png)