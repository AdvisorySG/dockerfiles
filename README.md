dockerfiles
===
Dockerfiles for Ghost/Umami production setup.

# Usage

Enter the `ghost/` and `umami/` directory, and pull the necessary images from Docker Hub:

```
$ docker compose pull
```

Once the latest images are built/pulled, the containers can be rebuilt from the images using:
```
$ docker compose up -d
```

