FROM phusion/baseimage:latest

RUN apt-get update && \
    apt-get install -y nodejs npm && \
    ln -s /usr/bin/nodejs /usr/bin/node

RUN apt-get -y install git

RUN npm install -g pm2

ADD key.pub /tmp/id_rsa.pub
RUN cat /tmp/id_rsa.pub >> /root/.ssh/authorized_keys && rm -f /tmp/id_rsa.pub

RUN rm -f /etc/service/sshd/down
RUN /etc/my_init.d/00_regen_ssh_host_keys.sh

COPY entrypoint /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/entrypoint"]
CMD ["/sbin/my_init"]
