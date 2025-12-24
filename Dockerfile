FROM jupyterhub/jupyterhub:3.1.1
RUN apt update && apt -y install python3-dev git
RUN apt -y install vim nano
WORKDIR jupyter
ENTRYPOINT jupyterhub --log-level=DEBUG