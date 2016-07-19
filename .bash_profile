if [ -f ~/.bashrc ] ; then
. ~/.bashrc
fi

export CC=gcc-4.2

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
