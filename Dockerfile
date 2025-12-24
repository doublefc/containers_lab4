FROM jupyterhub/jupyterhub:3.1.1
RUN pip install --no-cache-dir psycopg2-binary
RUN apt update && apt -y install python3-dev git
RUN apt -y install vim nano
WORKDIR jupyter
ENTRYPOINT jupyterhub --config=/etc/jupyterhub/jupyterhub_config.py --log-level=DEBUG