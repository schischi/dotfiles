#!/usr/bin/env zsh

setopt extendedglob
setopt glob_dots

update() {
    git pull
    git submodule update
    git submodule foreach git pull origin master
}

install() {
    git submodule init
    git submodule update
    cd $HOME
    ln -s $OLDPWD/*~*.git~*.gitmodules~*install.zsh~*README.mkd .
}

case "$1" in
    'install')
        install
        ;;
    'update')
        update
        ;;
    *)
        exit 1
        ;;
esac
