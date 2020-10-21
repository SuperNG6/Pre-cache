FROM python:3.7.6

LABEL maintainer="NG6"

COPY . .
RUN pip install -r /opt/requirements.txt \
    && rm -rf ~/.cache/pip/* 
ENTRYPOINT ["/usr/bin/python","/opt/pre_cache.py"]
