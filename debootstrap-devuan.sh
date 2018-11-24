
if  [ "$1" = "x11" ] ; then 
  echo x11
  apt-get update ; apt-get install blackbox xterm screen ncurses-dev xinit  
fi 



  date
 cp -v debootstrap-devuan.sh   /opt/
 cp -v debootstrap-devuan.sh   /root/

echo debootstrap devuan
  apt-get update ; apt-get install debootstrap -y 
  mkdir /target
  pwd 

 #  debootstrap                    --no-check-gpg     --include=netbase,wpasupplicant  testing   .   http://ftp.debian.org/debian/  

  PKG="wpasupplicant,netbase,login,tcc,passwd"
 # debootstrap   --no-check-gpg  --include="$PKG" --arch i386 jessie  /target  http://auto.mirror.devuan.org/merged/
# debootstrap   --no-check-gpg  --include="$PKG" --arch i386 ascii  /target  http://auto.mirror.devuan.org/merged/
  debootstrap   --no-check-gpg  --include="$PKG" --arch i386 ascii  /target  http://be.deb.devuan.org/merged 

  date
  mkdir /target/lib/modules

  mkdir /target/media/pendrive 
  mkdir /target/media/sda1
  mkdir /target/media/sdb1

  echo 
  cp -v  /etc/network/interfaces  /target/etc/network/
  cp -v  /etc/network/wifi.conf   /target/etc/network/

  echo 
  cp -v  /usr/local/bin/nconfig   /target/usr/local/bin/ 

  echo "" > /target/etc/fstab 
  mv    /target/boot   /target/boot-origin

  # cp -a  /boot/   /target/
  nano /target/etc/shadow
  date

  echo please do place boot and modules now 
  cp -a /boot/ /target 
  echo mission completed

exit


deb http://be.deb.devuan.org/merged ascii main non-free contrib
deb-src http://be.deb.devuan.org/merged ascii main non-free contrib

deb http://be.deb.devuan.org/merged ascii-security main non-free contrib
deb-src http://be.deb.devuan.org/merged ascii-security main non-free contrib

deb http://be.deb.devuan.org/merged ascii-updates main non-free contrib
deb-src http://be.deb.devuan.org/merged ascii-updates main non-free contrib

