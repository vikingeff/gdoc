FROM eboraas/debian

MAINTAINER VikingZ email:gleger@student.42.fr

# if needed install softwares
RUN apt-get update && apt-get install -y vim ssh sudo
#RUN apt-get update && apt-get install -y openssh-server

# Add conf sources for ssh
ADD sshd_config /etc/ssh/
ADD issue.net /etc/

# add user and sudo him
RUN useradd -d /home/gleger -m -s /bin/bash gleger
RUN echo gleger:gleger | chpasswd
RUN echo 'gleger ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers.d/gleger
RUN chmod 0440 /etc/sudoers.d/gleger

RUN mkdir /var/run/sshd
RUN echo 'root:screencast' | chpasswd
RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

# ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

ADD docker_rsa.pub /home/gleger/.ssh/authorized_keys
ADD docker_rsa.pub /root/.ssh/authorized_keys
RUN chown gleger /home/gleger/.ssh/authorized_keys
RUN chown -R gleger:gleger /home/gleger/.ssh/authorized_keys
RUN chmod 700 /home/gleger/.ssh/authorized_keys

ADD docker_rsa /root/.ssh/id_rsa
ADD docker_rsa /home/gleger/.ssh/id_rsa
RUN chmod 700 /home/gleger/.ssh/id_rsa
RUN chmod 700 /home/gleger/.ssh/id_rsa

EXPOSE 42

CMD ["/usr/sbin/sshd", "-D"]
