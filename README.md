# docker_onebase
Base image for containerized OpenNebula installation for testing purposes. 

Authentication for oneadmin user is in /root/.one_auth.
The default password is "password". Please change it when running a child container.

This container is not meant to be run as is, but it is a common base for ONE services.
You can run it anyway like this:
    docker run -it svallero/docker_onebase bash
