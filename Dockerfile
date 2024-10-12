FROM mariadb:latest
MAINTAINER Vui Le "amelon@gmail.com"

#------------------------------------------------------------------------------
# Core tools
#------------------------------------------------------------------------------

RUN apt-get update \
    && apt-get install -y \
              vim git \
              software-properties-common \
              curl

#------------------------------------------------------------------------------
# Miscellaneous
#------------------------------------------------------------------------------

# Adjust timezone from UTC to PST
RUN mv /etc/localtime /etc/localtime.old \
    && ln -s /usr/share/zoneinfo/America/Los_Angeles /etc/localtime
RUN mkdir -p /code

RUN usermod -u 3001 mysql
RUN groupmod -g 3001 mysql

COPY code/entrypoint_loop.sh /code
USER mysql
