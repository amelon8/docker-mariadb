# docker-mariadb

## Instructions
* Build image:
```
% docker compose build
```

* Start containers:
```
% docker compose up -d
```
* Verify containers are running:
```
% docker compose ps
NAME                       IMAGE                      COMMAND                  SERVICE   CREATED          STATUS          PORTS
docker-mariadb-adminer-1   adminer                    "entrypoint.sh php -…"   adminer   28 seconds ago   Up 27 seconds   0.0.0.0:10000->8080/tcp
mariadb_999                amelon1/docker-mariadb:1   "docker-entrypoint.s…"   db        28 seconds ago   Up 27 seconds   0.0.0.0:3306->3306/tcp
```

* Connect to the container using Bash shell:
```
% docker compose exec db bash
```

* Shut down the contqiner:
```
% docker compose down
```

## Usage
* Connect to Adminer, database management tool.
    * http://localhost:10000/
* Connect to database (first connect to the db container).
```
% docker compose exec db bash
docker# mariadb -u root -p db-root
mariadb> show databases;
```

