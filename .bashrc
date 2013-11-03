# Cabal
export PATH=$PATH:~/.cabal/bin

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

