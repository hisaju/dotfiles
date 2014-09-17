# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

alias ll='ls -la'

SSH_AGENT_FILE=~/.ssh/.ssh-agent
[ -r $SSH_AGENT_FILE ] && . $SSH_AGENT_FILE > /dev/null
if [ -z "$SSH_AUTH_SOCK" ] || [ ! -S "$SSH_AUTH_SOCK" ]; then
    [ -d ~/.ssh ] || mkdir -m 700 ~/.ssh
    ssh-agent > $SSH_AGENT_FILE
    . $SSH_AGENT_FILE > /dev/null
fi

export SCREENDIR=/Users/kikumoto/.screen/sessions

source $HOME/perl5/perlbrew/etc/bashrc

PATH=$PATH:/usr/local/sbin
#PATH="$(brew --prefix josegonzalez/php/php53)/bin:$PATH"
eval "$(rbenv init -)"
PATH=$PATH:/Applications/android-sdk-mac_86/tools
PATH=$PATH:$HOME/bin
PATH=$HOME/.nodebrew/current/bin:$PATH
#PATH=$PATH:/usr/local/share/npm/lib/node_modules
export PATH

#export PHP_VERSIONS=${HOME}/local/php/versions
#export APACHE_PATH=$(brew --prefix)/Cellar/httpd/2.2.22
#export PHP_HOME=$HOME/local/php/versions
#source $(brew --prefix php-version)/php-version.sh && php-version 5.3.15 >/dev/null
#export CAKE_ENV=development

# phpenv
#if [ -f ~/.phpenv/bin/phpenv ]; then
#    export PATH=$PATH:~/.phpenv/bin
#    eval "$(phpenv init -)"
#fi
#export NODE_PATH=/usr/local/share/npm/lib/node_modules
#export DYLD_LIBRARY_PATH=/usr/local/opt/libxml2/lib:$DYLD_LIBRARY_PATH

SSL_CERT_FILE=/usr/local/ssl/cacert.pem
export SSL_CERT_FILE
#export DYLD_LIBRARY_PATH=/usr/local/Cellar/libxml2/2.9.1/lib:$DYLD_LIBRARY_PATH
