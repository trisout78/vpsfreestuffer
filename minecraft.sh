echo "This script is made by Trisout for vpslxc.com"
echo "Installing dependencies..."
curl -SsL https://playit-cloud.github.io/ppa/key.gpg | sudo apt-key add -
sudo curl -SsL -o /etc/apt/sources.list.d/playit-cloud.list https://playit-cloud.github.io/ppa/playit-cloud.list
sudo apt update
sudo apt install playit -y
echo "Available minecraft versions:"
echo "1 -> 1.19.2 (Recommended 4Gb+ ram)"
echo "2 -> 1.8.8"
echo ""
read -p "Enter minecraft version: " minecraftv
case $minecraftv in
    1)
        echo "Selected: ${minecraftv} > 1.19.2"
        cd
        mkdir mc-server
        cd mc-server
        sleep 1
        wget http://node.eternodes.eu:45005/1.19.2.tar.gz
        chmod 777 1.19.2.tar.gz
        tar -xzvf 1.19.2.tar.gz
        echo "eula=true" > eula.txt
        apt install openjdk-17-jre-headless -y
        ;;

    2)
        echo "Selected: ${minecraftv} > 1.8.8"
        echo "Soon"
