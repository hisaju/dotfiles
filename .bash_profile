if [ -f ~/.bashrc ] ; then
. ~/.bashrc
fi

# export CC=gcc-4.2

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export PATH="/usr/local/opt/elasticsearch@2.4/bin:$PATH"
export PATH=$HOME/.nodebrew/current/bin:$PATH
