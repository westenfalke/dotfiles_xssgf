cat /workspaces/.codespaces/.persistedshare/dotfiles/add2.bashrc >> ~/.bashrc
cp -fpn /workspaces/.codespaces/.persistedshare/dotfiles/.alias ~/
cp -fprn /workspaces/.codespaces/.persistedshare/dotfiles/.devcontainer ${CODESPACE_VSCODE_FOLDER:-/workspaces/$(echo $CODESPACE_NAME|cut -d'-' -f 3)}
# a script to in install pandoc for apline from community repo
# and backups of the bootetrap.sh as well as install*.sh 
mkdir -vp ~/bin && cp -pp /workspaces/.codespaces/.persistedshare/dotfiles/*sh ~/bin
# Dockerfile and devcontainer.json for "apline" container  
cp -fprn /workspaces/.codespaces/.persistedshare/dotfiles/.devcontainer ${CODESPACE_VSCODE_FOLDER:-/workspaces/$(echo $CODESPACE_NAME|cut -d'-' -f 3)}
# xsh - eXtension of baSH
/workspaces/.codespaces/.persistedshare/dotfiles/install-xsh-and-xssg.sh && /workspaces/.codespaces/.persistedshare/dotfiles/install-xssgf-xsh-lib-dev.sh
# install pandoc apline from community repo if etc/apk/repositories exist
# this ensures this script is only if the container is rebuild 
# and prevents us from installing to install into non apline distro
# during setup during the first boot of the codespace
if [ ! -e /etc/apk/repositories ]; then : /workspaces/.codespaces/.persistedshare/dotfiles/install-pandoc.sh; fi
