#create Minecraft Server Director

mkdir -p /home/pi/MCSERVER

#Change Dir
cd /home/pi/MCSERVER 

#
echo "cd /home/pi/MCSERVER" >run.sh
echo "java -Xms920M -Xmx968M -jar spigot-1.13.jar " >> run.sh 

#Download Spigot 
wget https://hub.spigotmc.org/jenkins/job/BuildTools/75/artifact/target/BuildTools.jar

#
java -jar BuildTools.jar --rev 1.13

#Run Minecraft for init 
java -Xms920M -Xmx968M -jar spigot-1.13.jar

echo "eula=true" >eula.txt

#Start Spigot 
java -Xms920M -Xmx968M -jar spigot-1.13.jar

echo "Finished"

echo "You Can try the Minecraft Server"
