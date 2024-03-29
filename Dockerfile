# Dockerfile: JupyterLab container image that has root permissions

# Start from a base Jupyter image
FROM jupyter/tensorflow-notebook:latest

# Enable passwordless sudo for user jovyan
USER root
RUN echo "jovyan  ALL = (ALL) NOPASSWD: ALL" >> /etc/sudoers

# Run as user jovyan
USER jovyan
