boot2docker init
boot2docker up
export DOCKER_CERT_PATH=/nfs/zfs-student-2/users/2013/gleger/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1
export DOCKER_HOST=tcp://192.168.59.103:2376
docker pull eboraas/debian
docker images
docker info
