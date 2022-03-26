# Running in a container (inc v2)

In its simplest form, you don’t need to build an image, just use this docker-compose.yml

This runs redis & mySQL as well as the app.

Before you run this you will need two networks setup. You only need to run this once.
```
docker network add services
docker network add proxy
```

You need two folders, ./app and ./app_data
- app/ will need a `.env` and `config.json` for local running, and it obviously is the root of the app
- app_data/ is bound to the app container (like brcms) but is not used yet (depends on how we want to handle the content)
- mysql/ will be created, it is the persistent storage for the mySQL container.

The following ENVs will be needed to access the MySQL and Redis services.
```
DB_CONNECTION=mysql
DB_HOST=mysql
DB_PORT=3306
DB_DATABASE=Your-DB-Name
DB_USERNAME=root
DB_PASSWORD=builder

REDIS_HOST=redis
REDIS_PASSWORD=null
REDIS_PORT=6379
```
