# docker run -t -i -p 80:80 hello/world:v42 /bin/bash
#docker run -d -P -v
#docker run -i -t -v $HOME/Work/docker/github/mission03/share:/home/gleger --name share_dock vikingz/share /bin/bash
docker run -i -t -v /Users/Shared:/home/gleger --name share_dock vikingz/share /bin/bash
