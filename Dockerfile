FROM centos:latest

COPY opennebula.repo /etc/yum.repos.d/opennebula.repo

# Keep in 2 steps or one-server dependencies are not found in this repo
RUN yum install -y epel-release
# (below: dirty hack or one-server wont't install)
RUN rm -rf  /var/lock 
RUN yum install -y opennebula-server redhat-lsb

# Install rubygems required by ON, always answer yes to install script
RUN yes | /usr/share/one/install_gems

# Set env for ON authentication
ENV ONE_AUTH=/root/.one_auth
# (below: should be changed when running the child container)
ENV ONE_PASSWORD=password 
RUN echo oneadmin:${ONE_PASSWORD} > ${ONE_AUTH}

# Main daemon runs as oneadmin user
RUN chown -R oneadmin /var/log/one /var/lock/one /var/run/one
