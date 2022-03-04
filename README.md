dockerfiles
===
Dockerfiles for Ghost production setup.

# Setup

Provide the following secrets in the following environment files:

`mysql.env`:
```bash
MYSQL_ROOT_PASSWORD=...
MYSQL_PASSWORD=...
```

`ghost.env`:
```bash
database__connection__password=...
mail__options__auth__pass=...
```

# Usage

The following commands should be executed while in the root of this repository.

The `nginx` image needs to be built first using:
```
$ docker-compose build
```

Afterwards, the `ghost` and `mysql` images can be pulled from Docker Hub:
```
$ docker-compose pull
```

Once the latest images are built/pulled, the containers can be rebuilt from the images using:
```
$ export DOCSEARCH_SCRAPER_CONFIG=$(cat ./docsearch.json | jq -r tostring)
$ docker-compose up -d
```
