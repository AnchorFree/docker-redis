FROM redis:3.2

RUN apt-get update -y && \
    apt-get install python-pip -y && \
    pip install envtpl

ADD bin/* /opt/startup/
ADD config/redis.tpl /usr/local/etc/redis/

RUN chmod +x /opt/startup/*

CMD ["/opt/startup/run.sh"]
