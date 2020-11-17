# About

[![GitHub Workflow Status](https://img.shields.io/github/workflow/status/binderhub-ci-repos/minimal-dockerfile/Build%20and%push?logo=github&label=Build%20and%20push%20cron%20job)](https://github.com/binderhub-ci-repos/minimal-dockerfile/actions)

This repo contain a Dockerfile is built and published every night to
[DockerHub](https://hub.docker.com/repository/docker/jupyterhub/binderhub-ci-repos_minimal-dockerfile)
as `jupyterhub/binderhub-ci-repos_minimal-dockerfile:latest`. It can be
referenced in other Dockerfiles to provide a provide a ~5 second build of a
fully viable BinderHub image, which is useful for as fast as possible CI tests
of [jupyterhub/binderhub](https://github.com/jupyterhub/binderhub).

## minimal-dockerfile

This takes ~20 seconds to build. This Dockerfile lives in this repo.

```Dockerfile
FROM python:3.8-slim
RUN pip install --no-cache notebook
ENV HOME=/tmp
```

## cached-minimal-dockerfile

This takes ~5 seconds to build. This Dockerfile is declared both in a [GitHub
repo](https://github.com/binderhub-ci-repos/cached-minimal-dockerfile) and in a
[GitLab repo](https://gitlab.com/binderhub-ci-repos/cached-minimal-dockerfile).

```Dockerfile
FROM jupyterhub/binderhub-ci-repos_minimal-dockerfile:latest
```
