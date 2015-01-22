# SSH
# eval $(keychain --eval --agents ssh -Q --quiet id_rsa)

# scripts
export PATH=$PATH:~/bin:~/bin/xmobar-scripts

# Cabal
export PATH=~/.cabal/bin:$PATH

# Xmonad
export PATH=$PATH:~/.xmonad/bin

# Node
NPM_PACKAGES=~/.npm-packages
export PATH=$NPM_PACKAGES/bin:$PATH

# Perl
export PERL_LOCAL_LIB_ROOT="$PERL_LOCAL_LIB_ROOT:~/perl5";
export PERL_MB_OPT="--install_base ~/perl5";
export PERL_MM_OPT="INSTALL_BASE=~/perl5";
export PERL5LIB="~/perl5/lib/perl5:$PERL5LIB";
export PATH="~/perl5/bin:$PATH";

# Ruby
export PATH=$(ruby -rubygems -e "puts Gem.user_dir")/bin:$PATH

# Go
export GOPATH=~/go
export PATH=$GOPATH/bin:$PATH

# Some aliases
alias cal="cal -m"
alias ls="ls --color"
alias ll="ls -la"
alias addon-sdk="cd /opt/addon-sdk && source bin/activate; cd -"

# Software
export CHROME_BIN=/usr/bin/chromium
export EDITOR=/usr/bin/vim

eval "$(rbenv init -)"

# PATH="$PATH:/home/niko/Downloads/flow/"
