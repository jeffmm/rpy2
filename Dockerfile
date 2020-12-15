FROM rpy2/rpy2:2.8.x

USER root

ADD requirements.txt /app/requirements.txt

WORKDIR /mnt

RUN pip install --upgrade pip \
      && pip freeze | xargs pip install --upgrade -q \
      && pip install -r requirements.txt

ENTRYPOINT jupyter notebook --ip 0.0.0.0 --allow
