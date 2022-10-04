#!/bin/bash
if [ ! -d /workspaces/xssgf ]; then cd /workspaces/ && git clone  https://github.com/keenestflaw/xssgf.git; fi
# install xssgf to lib-dev
if [ ! -r ~/.xshrc ]; then echo "ERROR: '~/.xshrc is' required is run xsh";exit 2; fi
source ~/.xshrc
if [ ! -d /workspaces/keenestflaw ]; then mkdir -pv /workspaces/keenestflaw; fi
ln -fs /workspaces/xssgf /workspaces/keenestflaw
find ~/.xsh/lib-dev -type l -name ssg| xargs rm -fv
xsh lib-dev-manager link keenestflaw/xssgf /workspaces
