# docker_onebase
Base image for containerized OpenNebula installation for testing purposes. 

Authentication for oneadmin user is in /root/.oneauth.
To change the default password (recommended), run with flag:

docker run -it -e ONE_PASSWORD=mypassword svallero/onebase bash

This container is not meant to be run as is, but it is a common base for OEN services.
