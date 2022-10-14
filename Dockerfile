FROM citusdata/pg_auto_failover:v2.0-pg15

USER docker
ENV PGDATA=/tmp/pgaf
COPY ./pg_hba.conf.sample /home
RUN sudo cp /home/./pg_hba.conf.sample usr/share/postgresql/15
RUN sudo apt-get update && sudo apt-get install -y vim

CMD ["/bin/sh" "-c" "echo 'Please Override Command in Docker compose !!!' "]