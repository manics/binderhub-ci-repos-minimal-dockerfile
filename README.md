# About

This Dockerfile is manually published to [DockerHub](https://hub.docker.com/repository/docker/jupyterhub/binderhub-ci-repos_minimal-dockerfile), which is used by a binderhub-ci-repos/cached-minimal-dockerfile [on GitHub](https://github.com/binderhub-ci-repos/cached-minimal-dockerfile) and [on GitLab](https://gitlab.com/binderhub-ci-repos/cached-minimal-dockerfile).

The purpose of this and this repo and the cached- repos that has a Dockerfile with a single `FROM` statement, is to make the jupyterhub/binderhub repository's CI build times be reduced to an absolute minimum.

The performance gain of building the cached- version of this Dockerfile is ~20s to ~5s.
