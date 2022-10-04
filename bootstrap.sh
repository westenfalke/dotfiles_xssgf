cat /workspaces/.codespaces/.persistedshare/dotfiles/add2.bashrc >> ~/.bashrc
cp -fpn /workspaces/.codespaces/.persistedshare/dotfiles/.alias ~/
cp -fprn /workspaces/.codespaces/.persistedshare/dotfiles/.devcontainer ${CODESPACE_VSCODE_FOLDER:-/tmp}
# a script to in install pandoc for apline from community repo
# and backups of the bootetrap.sh as well as install*.sh 
mkdir -vp ~/bin && cp -pp /workspaces/.codespaces/.persistedshare/dotfiles/*sh ~/bin
# Dockerfile and devcontainer.json for "apline" container  
cp -fprn /workspaces/.codespaces/.persistedshare/dotfiles/.devcontainer ${CODESPACE_VSCODE_FOLDER:-/tmp}
# xsh - eXtension of baSH
/workspaces/.codespaces/.persistedshare/dotfiles/install-xsh-and-xssg.sh && /workspaces/.codespaces/.persistedshare/dotfiles/install-xssgf-xsh-lib-dev.sh
