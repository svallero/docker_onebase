# docker_onebase
Base image for containerized OpenNebula installation for testing purposes. 

Authentication for oneadmin user is in /root/.one_auth.
To change the default password (recommended), run with flag:

    docker run -it -e ONE_PASSWORD=mypassword svallero/docker_onebase bash

This container is not meant to be run as is, but it is a common base for ONE services.
