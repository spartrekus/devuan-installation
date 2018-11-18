
if  [ "$1" = "x11" ] ; then 
  echo x11
  apt-get update ; apt-get install blackbox xterm screen ncurses-dev xinit  
fi 



  date
cp -v debootstrap-devuan.sh   /opt/

echo debootstrap devuan
  apt-get update ; apt-get install debootstrap -y 
  mkdir /target
  pwd 

 #  debootstrap                    --no-check-gpg     --include=netbase,wpasupplicant  testing   .   http://ftp.debian.org/debian/  
  PKG="wpasupplicant,netbase,login,passwd"
 # debootstrap   --no-check-gpg  --include="$PKG" --arch i386 jessie  /target  http://auto.mirror.devuan.org/merged/
# debootstrap   --no-check-gpg  --include="$PKG" --arch i386 ascii  /target  http://auto.mirror.devuan.org/merged/
  debootstrap   --no-check-gpg  --include="$PKG" --arch i386 ascii  /target  http://be.deb.devuan.org/merged 

  date
  mkdir /target/media/sda1 
  mkdir /target/lib/modules
  mkdir /target/media/pendrive 
  mkdir /target/media/sda1
  mkdir /target/media/sdb1
  cp -v  /etc/network/interfaces  /target/etc/network/
  cp -v  /etc/network/wifi.conf   /target/etc/network/
  echo "" > /target/etc/fstab 
  mv    /target/boot   /target/boot-origin
  # cp -a  /boot/   /target/
  echo do place boot
  nano /target/etc/shadow
  date

exit


deb http://be.deb.devuan.org/merged ascii main non-free contrib
deb-src http://be.deb.devuan.org/merged ascii main non-free contrib

deb http://be.deb.devuan.org/merged ascii-security main non-free contrib
deb-src http://be.deb.devuan.org/merged ascii-security main non-free contrib

deb http://be.deb.devuan.org/merged ascii-updates main non-free contrib
deb-src http://be.deb.devuan.org/merged ascii-updates main non-free contrib

