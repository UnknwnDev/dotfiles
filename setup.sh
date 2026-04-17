mv ~/.bashrc ~/.bashrc.bak
stow bash

make -C ./bash/ble.sh install PREFIX=~/.local
