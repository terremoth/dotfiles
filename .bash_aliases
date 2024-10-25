alias ll='ls -lh'
alias la='ls -A'
alias l='ls -CF'

alias git-https="git remote set-url origin https://github.com/$(git remote get-url origin | sed 's/https:\/\/github.com\///' | sed 's/git@github.com://')"
alias git-ssh="git remote set-url origin git@github.com:$(git remote get-url origin | sed 's/https:\/\/github.com\///' | sed 's/git@github.com://')"

ghc() {
    git clone https://github.com/$1
}

ghct() {
    ghc "terremoth/$1"
}

copyc() {
    cat $1 | xclip -sel clipboard
}
