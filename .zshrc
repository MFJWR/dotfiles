#補完機能を使用する
autoload -U compinit promptinit
compinit
zstyle ':completion::complete:*' use-cache true
zstyle ':completion:*:default' menu select=1
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
autoload -Uz colors
colors

#プロンプト
PROMPT="[%{${fg[cyan]}%}%B%~%b%{${reset_color}%}]
$ "

#ヒストリーサイズ設定
HISTFILE=$HOME/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
PATH=${PATH}:~/bin

#ヒストリの一覧を読みやすい形に変更
HISTTIMEFORMAT="[%Y/%M/%D %H:%M:%S] "
#ヒストリファイルを上書きするのではなく、追加するようにする
setopt APPEND_HISTORY
#補完の時にベルを鳴らさない
setopt NO_LIST_BEEP
#^Dでログアウトしないようにする
unsetopt IGNORE_EOF
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# エイリアス
alias la='ls -la -G'
alias ll='ls -l -G'
export LSCOLORS=xbfxcxdxbxegedabagacad
