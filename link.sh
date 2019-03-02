#!/usr/bin/env bash

set -u
Dot_Directory="${HOME}/dotfiles"
Dot_Config_Dir=".config"

cd ${Dot_Directory}
for f in .??*
do
    #無視したいファイルやディレクトリ
    [ "$f" = ".git" ] && continue
    [ "$f" = ".config" ] && continue
    [ "$f" = ".sh" ] && continue
    ln -snfv ${Dot_Directory}/${f} ${HOME}/${f}
done

cd ${Dot_Directory}/${Dot_Config_Dir}
for file in `\find . -maxdepth 8 -type f`; do
    #./の2文字を削除するためにfile:2としている
    ln -snfv \
    ${Dot_Directory}/${Dot_Config_Dir}/${file:2} \
    ${HOME}/${Dot_Config_Dir}/${file:2}
done

echo "Hello World"