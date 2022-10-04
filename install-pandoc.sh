if [ ! -e /etc/apk/repositories ]; then echo "WRNING: /etc/apk/repositories does not exit"; exit 0 ; fi 
### /media/cdrom/apks
### https://dl-cdn.alpinelinux.org/alpine/latest-stable/main
### https://dl-cdn.alpinelinux.org/alpine/latest-stable/community
### http://dl-cdn.alpinelinux.org/alpine/v3.16/main
### http://dl-cdn.alpinelinux.org/alpine/v3.16/community
### http://dl-cdn.alpinelinux.org/alpine/edge/main
### http://dl-cdn.alpinelinux.org/alpine/edge/community
### http://dl-cdn.alpinelinux.org/alpine/edge/testing

cp -p /etc/apk/repositories  /tmp/repositories.orig
cp -p /etc/apk/repositories  /tmp/repositories.new

echo "https://dl-cdn.alpinelinux.org/alpine/edge/community" >>  /tmp/repositories.new
sudo mv /tmp/repositories.new /etc/apk/repositories 
sudo apk update 
sudo apk upgrade
sudo apk add pandoc
sudo mv /tmp/repositories.orig /etc/apk/repositories
