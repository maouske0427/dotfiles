eval "$(/opt/homebrew/bin/brew shellenv)"
export RBENV_ROOT="$HOME/.rbenv"
export PATH="$RBENV_ROOT/bin:$PATH"
eval "$(rbenv init -)"
export RBENV_ROOT="$HOME/.rbenv"
export PATH="$RBENV_ROOT/bin:$PATH"
# 環境設定
export LANG=ja_JP.UTF-8

#liases(エイリアスと関数)
alias ll='ls -l'
alias la='ls -a'
alias lg='ls -G'
alias lag='ls -aG'
alias ..='cd ../'
alias ...='cd ../../'
alias ~='cd ~'


