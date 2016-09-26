#!/bin/bash

cd "$(dirname ${BASH_SOURCE[0]})"

function ensure() {
    if [[ ! -f "$2" ]] || ! fgrep -q "$1" "$2"; then
        mkdir -p "$(dirname $2)"
        echo "$1" >> "$2"
    fi
}

ensure 'source ~/.vim/vim-sane   " include common sense options' ~/.vimrc
install -Dm644 vim-sane ~/.vim/vim-sane
