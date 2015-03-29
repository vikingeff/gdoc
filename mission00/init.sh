red='\033[0;31m'
green='\033[0;32m'
cyan='\033[0;36m'
orange='\033[0;33m'
lpurple='\033[1;35m'
NC='\033[0m' # No Color

echo "${red}############################${NC}"
echo "${green}Boot2docker initializing ...${NC}"
boot2docker init
echo "${red}############################${NC}"
echo ""
echo "${red}############################################${orange}"
boot2docker up
echo "${red}############################################${NC}"
echo ""
echo "${red}###########################${NC}"
echo "${green}Configuring environment ...${NC}"
export DOCKER_CERT_PATH=/nfs/zfs-student-2/users/2013/gleger/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1
export DOCKER_HOST=tcp://192.168.59.103:2376
echo "${red}###########################${NC}"
echo ""
echo "${red}##########################${NC}"
echo "${green}Downloading base image ...${NC}"
docker pull eboraas/debian
echo "${red}##########################${orange}"
echo ""
echo "${red}#################${NC}"
echo "${red}# ${cyan}Docker images ${red}#${NC}"
echo "${red}#################${lpurple}"
docker images
echo ""
echo "${red}################${NC}"
echo "${red}# ${cyan}Docker infos ${red}#${NC}"
echo "${red}################${lpurple}"
docker info
echo "${NC}
