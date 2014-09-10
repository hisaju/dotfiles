if [ -f ~/.bashrc ] ; then
. ~/.bashrc
fi

export CC=gcc-4.2

export PATH=/usr/local/bin:$PATH
eval "$(rbenv init -)"
