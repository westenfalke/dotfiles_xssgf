!/bin/bash
cat /workspaces/.codespaces/.persistedshare/dotfiles/add2.bashrc >> ~/.bashrc
cp -fpn /workspaces/.codespaces/.persistedshare/dotfiles/.alias >> ~/
cp -fprn /workspaces/.codespaces/.persistedshare/dotfiles/.devcontainer ${CODESPACE_VSCODE_FOLDER:-/workspaces/xssgf}
mkdir -vfp ~/bin && cp -pp /workspaces/.codespaces/.persistedshare/dotfiles/install*sh ~/bin
mkdir -vfp ${CODESPACE_VSCODE_FOLDER}/bin && cp -pn /workspaces/.codespaces/.persistedshare/dotfiles/install*sh ${CODESPACE_VSCODE_FOLDER}/bi

n