FROM eboraas/debian

MAINTAINER VikingZ email:gleger@student.42.fr

# Add the tar file of the web site
ADD sources.tar /tmp/

# if needed install softwares
RUN apt-get update && apt-get install -y vim nginx sudo

# add user and sudo him
RUN useradd -d /home/gleger -m -s /bin/bash gleger
RUN echo gleger:gleger | chpasswd
RUN echo 'gleger ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers.d/gleger
RUN chmod 0440 /etc/sudoers.d/gleger

# Docker automatically extracted. So move files to web directory
RUN mv /tmp/* /usr/share/nginx/www

#ADD .bashrc /root/
#ADD profile /etc/
ADD bash.bashrc /etc/

#RUN echo 'PS1="\[\e[00;31m\]gleger\[\e[0m\]\[\e[00;36m\]@\[\e[0m\]\[\e[00;32m\]42born2code\[\e[0m\]\[\e[00;36m\]:~\\w\[\e[0m\]"' >> /root/.bashrc
#RUN export PS1="\[\e[00;31m\]gleger\[\e[0m\]\[\e[00;36m\]@\[\e[0m\]\[\e[00;32m\]42born2code\[\e[0m\]\[\e[00;36m\]:~\\w~>\[\e[0m\]"

#ENV PS1="\[\e[00;31m\]gleger\[\e[0m\]\[\e[00;36m\]@\[\e[0m\]\[\e[00;32m\]42born2code\[\e[0m\]\[\e[00;36m\]:~\\w~>\[\e[0m\]"

EXPOSE 80

#RUN echo "daemon off;" >> /etc/nginx/nginx.conf

#CMD ["/usr/sbin/nginx"]
#CMD /usr/sbin/nginx -c /etc/nginx/nginx.conf
