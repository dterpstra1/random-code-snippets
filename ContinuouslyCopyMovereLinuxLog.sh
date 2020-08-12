#use this code at your own risk
cd /usr/Movere
#start your loop here
ls -lha
cp -a /usr/Movere/Movere.log "/usr/Movere/logcopy-$(date +"%Y-%m-%dT%H%M%S%:z").log"
ls -lha
#end your loop here
