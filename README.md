# Running in a container (inc v2)

In its simplest form, you don’t need to build an image, just use this docker-compose.yml

This runs redis & mySQL as well as the app.

You need two folders, ./app and ./app_data/mysql
- app/ will need a `.env` and `config.json` for local running, and it obviously is the root of the app
- app_data/ is bound to the app container (like brcms) but is not used yet (depends on how we want to handle the content)
- app_data/mysql just needs to be an empty folder, it is the persistent storage for the mySQL container.

If you use mysql on your Mac instead, then you don’t need app_data/mysql and you can delete the mysql section of the docker.compose.yml

git init
git add *
git commit -m "first commit"
git branch -M master
git remote add origin git@github.com:francisw/october.git
git push -u origin master