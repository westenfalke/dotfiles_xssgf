#!/bin/bash

#bootstrap xcs-lib
curl -s https://raw.githubusercontent.com/alexzhangs/xsh/master/boot | bash
source ~/.xshrc 
xsh load -b master xsh-lib/core
xsh load -b main keenestflaw/xssgf