mv ~/.bashrc ~/.bashrc.bak
stow . --ignore=".sh"

make -C ./bash/ble.sh install PREFIX=~/.local
