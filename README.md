# CapitalOne Dask Tutorial

## Building the image:

```
docker build --tag dask:latest .
```

## Pushing image to DockerHub

* First Tag the image

Note: The "aktech" in the image tags below is the dockerhub username, it will
be different for you.

```
docker tag dask:latest aktech/dask:latest
```

* Push the image

```
docker push aktech/dask:latest
```

## Running the image

```bash
docker run -p 8786:8786 -it --rm aktech/dask:latest /bin/bash
```
