echo "This script is made by Trisout for vpsfree.fr"
echo "Installing dependencies..."
curl -s https://packagecloud.io/install/repositories/pufferpanel/pufferpanel/script.deb.sh | sudo bash
apt update
echo "Installing PufferPanel..."
sudo apt-get install pufferpanel
sudo systemctl enable pufferpanel
echo "User Setup"
sudo pufferpanel user add
sudo systemctl enable --now pufferpanel
echo "---------------------------"
echo "You can now use PufferPanel"
echo "http://[yourserverip]:8080"
echo "---------------------------"
