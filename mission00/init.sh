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
echo "${red}##########################${orange}"
docker pull eboraas/debian
echo "${red}##########################${NC}"
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
echo "${NC}"
