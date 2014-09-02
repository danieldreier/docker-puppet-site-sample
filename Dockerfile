FROM danieldreier/docker-r10k-builder
MAINTAINER Daniel Dreier <ddreier@thinkplango.com>

ADD . /opt/dockermaster/src/site-repo
RUN cd /opt/dockermaster/src/site-repo && r10k --verbose debug deploy environment -p
VOLUME /opt/dockermaster/environments
