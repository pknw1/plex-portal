export DEBIAN_FRONTEND=noninteractive
sudo apt update
sudo apt upgrade -o Dpkg::Options::='--force-all' --allow -fuy
sudo apt install -y aptitude
