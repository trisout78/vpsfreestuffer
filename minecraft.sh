
echo "This script is made by Trisout for vpslxc.com"
echo "Available minecraft versions:"
echo "1 -> 1.19.2 (Recommended 4Gb+ ram)"
echo "2 -> 1.8.8"
echo ""
read -p "Enter minecraft version: " minecraftv
case $minecraftv in
    1)
        echo "Selected: ${minecraftv} > 1.19.2"
        mkdir -p mcserver/cache/ && wget -O mcserver/cache/mojang_1.18.2.jar "https://drive.google.com/uc?id=1WJ0etteMz3il7gs5iJhDyjoF1t4L35UN&export=download&confirm=t&uuid=f82a51cd-60da-4672-9ec8-445e88cff74c"
        sleep 1
        cd mcserver
        wget -O server.jar https://api.papermc.io/v2/projects/paper/versions/1.18.2/builds/388/downloads/paper-1.18.2-388.jar
        echo "eula=true" > eula.txt
        apt install openjdk-17-jre-headless -y
        ;;

    2)
        echo "Selected: ${minecraftv} > 1.16.5"
        mkdir -p mcserver/cache/ && wget -O mcserver/cache/mojang_1.16.5.jar "https://drive.google.com/uc?id=14a-_cH_UTbJDnk3CrpDuN5fZEcEyWq1M&export=download&confirm=t&uuid=7b6920de-983c-443c-ae9c-54c5cb49d4eb"
        sleep 1
        cd mcserver
        wget -O server.jar https://api.papermc.io/v2/projects/paper/versions/1.16.5/builds/794/downloads/paper-1.16.5-794.jar
        echo "eula=true" > eula.txt
        apt install openjdk-16-jre-headless -y
        pm2 start "java -jar server.jar"
        echo "Server is up and running!"
        echo "to check the logs do:"
        echo "pm2 logs 1"
        echo ""
        echo "to attach to the console do:"
        echo "pm2 attach 1"
        echo ""
        echo "For more commands please check the help for pm2"
        ;;
