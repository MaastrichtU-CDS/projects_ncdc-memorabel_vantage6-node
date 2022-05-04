FROM harbor.vantage6.ai/infrastructure/base

WORKDIR /usr/app

COPY . .

RUN pip install -e .
#RUN [ "python", "setup.py", "install" ]

# LABEL version="1.0"
# LABEL infrastructure_version = "1.2.3"
# LABEL maintainer="Mantainer <mantainer@site.nl>"

# COPY . /vantage6
# RUN pip install -e /vantage6/vantage6-common
# RUN pip install -e /vantage6/vantage6-client
# RUN pip install -e /vantage6/vantage6
# RUN pip install -e /vantage6/vantage6-node
# RUN pip install -e /vantage6/vantage6-server

# Greenlet fixes: see https://github.com/gevent/gevent/issues/1260
# RUN pip install gunicorn==19.9.0
RUN pip install gevent==1.3.4
RUN pip install greenlet==0.4.13

# socketio fixes untill we remove the socketIO_client package from the node
RUN pip install python-engineio==3.10.0
RUN pip install python-socketio==4.4.0

# expose the proxy server port
# ARG port=8081
# EXPOSE ${port}
# ENV PROXY_SERVER_PORT ${port}
