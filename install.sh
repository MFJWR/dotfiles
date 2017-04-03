#!/bin/zsh

dots=(
    "hammerspoon"
    "zshrc"
)

for d in $dots; do
    from="${HOME}/.${d}"
    to="${PWD}/.${d}"

    # ファイルが存在しない場合シンボリックリンクを作成
    ln -s $to ~
    if [ $? -eq 0 ]; then
        echo "symlink created: ${from} -> ${to}"
    fi
done
