FROM centos:latest
MAINTAINER jcloud www.jdcloud.com
RUN yum install openssh-server net-tools -y
RUN mkdir /var/run/sshd
RUN echo 'root:jcloudA#699' | chpasswd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -i '/Port 22/a\Port 4011' /etc/ssh/sshd_config
RUN ssh-keygen -A
EXPOSE 4011
CMD ["/usr/sbin/sshd","-D"]
