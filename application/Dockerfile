FROM phusion/baseimage:latest

RUN apt-get update && \
    apt-get -y install git nginx 

ADD key.pub /tmp/id_rsa.pub
RUN cat /tmp/id_rsa.pub >> /root/.ssh/authorized_keys && rm -f /tmp/id_rsa.pub

RUN rm -f /etc/service/sshd/down
RUN /etc/my_init.d/00_regen_ssh_host_keys.sh

CMD ["/sbin/my_init"]
