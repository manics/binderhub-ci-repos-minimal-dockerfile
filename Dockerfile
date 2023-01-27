FROM python:3.8-slim
# Authenticated BinderHub requires jupyterhub-singleuser
RUN pip install --no-cache notebook jupyterlab jupyterhub
RUN useradd -m jovyan
USER jovyan
