FROM ubuntu
MAINTAINER Sanghoon Lee <samkookji77@gmail.com>
COPY ./start.sh /
RUN chmod 755 /start.sh
RUN apt update -y
CMD /start.sh
