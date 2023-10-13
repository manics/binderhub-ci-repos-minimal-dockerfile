# About

[![GitHub Workflow Status](https://github.com/binderhub-ci-repos/minimal-dockerfile/actions/workflows/build-and-push-cron.yaml/badge.svg)](https://github.com/binderhub-ci-repos/minimal-dockerfile/actions/workflows/build-and-push-cron.yaml)

This repository is built and published every night to
[DockerHub](https://hub.docker.com/repository/docker/jupyterhub/binderhub-ci-repos_minimal-dockerfile)
as `jupyterhub/binderhub-ci-repos_minimal-dockerfile:latest`. It can be
referenced in other Dockerfiles to provide a fast build of a
image that a BinderHub can run. This pattern of referencing an already
built image is used for CI tests
of [jupyterhub/binderhub](https://github.com/jupyterhub/binderhub).

## minimal-dockerfile

This is an example of a "minimal repo" that is fast to build. This `Dockerfile` lives in
this repo.

```Dockerfile
FROM python:3.8-slim
RUN pip install --no-cache notebook
ENV HOME=/tmp
```

## cached-minimal-dockerfile

This `Dockerfile` is even faster to build. All it does is reference the image built
from `minimal-dockerfile`. We use this both in a [GitHub
repo](https://github.com/binderhub-ci-repos/cached-minimal-dockerfile) and in a
[GitLab repo](https://gitlab.com/binderhub-ci-repos/cached-minimal-dockerfile). These
repositories are both used as part of the BinderHub unit tests.

```Dockerfile
FROM jupyterhub/binderhub-ci-repos_minimal-dockerfile:latest
```
