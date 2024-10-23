alias ll='ls -lh'
alias la='ls -A'
alias l='ls -CF'

ghc() {
    git clone https://github.com/$1
}

ghct() {
    ghc "terremoth/$1"
}
