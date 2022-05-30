# Guacamole with docker-compose

## Prerequisites
You need a working **docker** installation and **docker-compose** running on your machine.

## Quick start
Clone the GIT repository and start guacamole:

~~~bash
git clone "https://github.com/SajidK25/guacamole-container.git"
cd guacamole-container
./prepare.sh
docker-compose up -d
~~~

Your guacamole server should now be available at `https://ip of your server:8443/`. The default username is `guacadmin` with password `guacadmin`.



## prepare.sh
`prepare.sh` is a small script that creates `./init/initdb.sql` by downloading the docker image `guacamole/guacamole` and start it like this:

~~~bash
docker run --rm guacamole/guacamole /opt/guacamole/bin/initdb.sh --postgres > ./init/initdb.sql
~~~

It creates the necessary database initialization file for postgres.

`prepare.sh` also creates the self-signed certificate `./nginx/ssl/self.cert` and the private key `./nginx/ssl/self-ssl.key` which are used
by nginx for https.

## reset.sh
To reset everything to the beginning, just run `./reset.sh`.