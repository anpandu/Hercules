FROM ubuntu:18.04

ENV PORT 6900
EXPOSE 6900
ENV PORT 6121
EXPOSE 6121
ENV PORT 5121
EXPOSE 5121

RUN apt-get update -y
RUN apt-get install -y build-essential
RUN apt-get install -y zlib1g-dev
RUN apt-get install -y libpcre3-dev
RUN apt-get install -y libmysqlclient-dev
RUN apt-get install -y mysql-server 

ADD . .

RUN ./configure
RUN make clean
RUN make sql

WORKDIR /
RUN touch output.txt
RUN chmod 777 output.txt

RUN groupadd -g 2000 pandu && useradd -m -u 2001 -g pandu pandu
USER pandu

WORKDIR /
#CMD sh -c "{./login-server.sh & ./char-server.sh & ./map-server.sh &} > output.txt && tail -f output.txt"
# CMD sh -c "sleep 100000"
