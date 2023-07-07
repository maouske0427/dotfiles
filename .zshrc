eval "$(/opt/homebrew/bin/brew shellenv)"
export RBENV_ROOT="$HOME/.rbenv"
export PATH="$RBENV_ROOT/bin:$PATH"
eval "$(rbenv init -)"
export RBENV_ROOT="$HOME/.rbenv"
export PATH="$RBENV_ROOT/bin:$PATH"
# 環境設定
export LANG=ja_JP.UTF-8

# 日本語ファイル名を表示できるようにする
setopt PRINT_EIGHT_BIT

# ヒストリの設定
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
# 色を使用出来るようにする
autoload -Uz colors
colors

#liases(エイリアスと関数)
alias ll='ls -l'
alias la='ls -a'
alias lg='ls -G'
alias llg='ls -lG'
alias lag='ls -aG'
alias ..='cd ../'
alias ...='cd ../../'
alias ~='cd ~'
alias cds='dirs -v; echo -n "select number: "; read newdir; cd +"$newdir"'

# cd時にhomeでなければauto_ls
function chpwd(){
    if [[ $(pwd) != $HOME ]]; then;
        ls -laG
    fi
}
autoload chpwd

# ディレクトリ名だけでcdする
setopt AUTO_CD
# cd したら自動的にpushdする
setopt AUTO_PUSHD
# 重複したディレクトリをスタックに追加しない
setopt PUSHD_IGNORE_DUPS
# コマンドのスペルをミスして実行した場合に候補を表示
setopt PRINT_EIGHT_BIT

# zsh-autosuggestionsの実行
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

