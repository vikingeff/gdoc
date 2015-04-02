FROM eboraas/debian

MAINTAINER VikingZ email:gleger@student.42.fr

# if needed install softwares
RUN apt-get update && apt-get install -y vim sudo

# add user and sudo him
RUN useradd -d /home/gleger -m -s /bin/bash gleger
RUN echo gleger:gleger | chpasswd
RUN echo 'gleger ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers.d/gleger
RUN chmod 0440 /etc/sudoers.d/gleger

#ADD .bashrc /root/
#ADD profile /etc/
ADD bash.bashrc /etc/

EXPOSE 80

