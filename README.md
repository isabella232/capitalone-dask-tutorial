# CapitalOne Dask Tutorial

## Building the image:

```
docker build --tag dask-workshop:latest .
```

## Pushing image to DockerHub

* First Tag the image

```
docker tag dask-workshop:latest quansight/dask-workshop:latest
```

* Push the image

```
docker push quansight/dask-workshop:latest
```

## Running the image

```bash
docker run -p 8786:8786 -it --rm quansight/dask-workshop:latest /bin/bash
```
