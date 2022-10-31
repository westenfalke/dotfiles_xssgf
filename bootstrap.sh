cat /workspaces/.codespaces/.persistedshare/dotfiles/add2.bashrc >> ~/.bashrc
cp -fpn /workspaces/.codespaces/.persistedshare/dotfiles/.alias ~/
cp -fprn /workspaces/.codespaces/.persistedshare/dotfiles/.devcontainer ${CODESPACE_VSCODE_FOLDER:-/workspaces/$(echo $CODESPACE_NAME|cut -d'-' -f 3)}
# a script to in install pandoc for apline from community repo
# and backups of the bootetrap.sh as well as install*.sh 
mkdir -vp ~/bin && cp -p /workspaces/.codespaces/.persistedshare/dotfiles/*sh ~/bin
# Dockerfile and devcontainer.json for "apline" container  
cp -fprn /workspaces/.codespaces/.persistedshare/dotfiles/.devcontainer ${CODESPACE_VSCODE_FOLDER:-/workspaces/$(echo $CODESPACE_NAME|cut -d'-' -f 3)}
# xsh - eXtension of baSH
/workspaces/.codespaces/.persistedshare/dotfiles/install-xsh-and-xssg.sh && /workspaces/.codespaces/.persistedshare/dotfiles/install-xssgf-xsh-lib-dev.sh
# install-pandoc.sh on apline only if etc/apk/repositories exist
# this prevents the attempt to install in a non apline ditro .e.g. 
# during setup during the first boot of the codespace
~/bin/install-pandoc.sh
