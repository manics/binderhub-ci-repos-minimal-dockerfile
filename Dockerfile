FROM docker.io/mambaorg/micromamba:latest
# Authenticated BinderHub requires jupyterhub-singleuser
RUN micromamba install -n base -y --log-level warning -c conda-forge notebook jupyterlab jupyterhub
# Default USER is mambauser
