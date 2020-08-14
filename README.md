# CapitalOne Dask Tutorial

## Building the image:

```
docker build --tag dask-training:latest .
```

## Pushing image to DockerHub

* First Tag the image

Note: The "aktech" in the image tags below is the dockerhub username, it will
be different for you.

```
docker tag dask:latest quansight/dask-training:latest
```

* Push the image

```
docker push quansight/dask-training:latest
```

## Running the image

```bash
docker run -p 8786:8786 -it --rm quansight/dask-training:latest /bin/bash
```
