# README for  `dummy_script`

Github repository for the [podman](https://podman.io/) conatiner [`dummy_script`](https://hub.docker.com/repository/docker/khench/dummy_script).

## Documentation of the initial setup

Originally, the `dummy_script` container was build using [buildah](https://buildah.io/), from the accompanying `Containerfile`:

```sh
buildah bud -t dummy_script
```

To make the container publicly available, it is pushed to [dockerhub](https://hub.docker.com/r/khench/dummy_script) using [skopeo](https://github.com/containers/skopeo) and [podman](https://podman.io/):

```sh
skopeo login -u khench docker.io
podman push localhost/dummy_script docker.io/khench/dummy_script:v0.2
```

## Accessing the container

The bundled software can be accessed directly from [dockerhub](https://hub.docker.com/r/khench/qc_suite) with `podman` (or `docker`, or `singularity`):

```sh
podman run docker.io/khench/dummy_script:v0.2 dummy_script /usr/local/bin/dummy_script
```

This should return:

```
======================
|    file content    |
======================
#!/usr/bin/env bash
echo '======================'
echo '|    file content    |'
echo '======================'
cat ${1}
echo '======================'
======================
```