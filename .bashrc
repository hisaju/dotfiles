# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

alias ll='ls -la'
alias be='bundle exec'

SSH_AGENT_FILE=~/.ssh/.ssh-agent
[ -r $SSH_AGENT_FILE ] && . $SSH_AGENT_FILE > /dev/null
if [ -z "$SSH_AUTH_SOCK" ] || [ ! -S "$SSH_AUTH_SOCK" ]; then
    [ -d ~/.ssh ] || mkdir -m 700 ~/.ssh
    ssh-agent > $SSH_AGENT_FILE
    . $SSH_AGENT_FILE > /dev/null
fi

if [ -f $HOME/perl5/perlbrew/etc/bashrc ]; then
  source $HOME/perl5/perlbrew/etc/bashrc
fi

PATH=$PATH:/usr/local/sbin
#PATH="$(brew --prefix josegonzalez/php/php53)/bin:$PATH"
if type "rbenv" > /dev/null 2>&1; then
  eval "$(rbenv init -)"
fi
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

#SSL_CERT_FILE=/usr/local/ssl/cacert.pem
#export SSL_CERT_FILE
#export DYLD_LIBRARY_PATH=/usr/local/Cellar/libxml2/2.9.1/lib:$DYLD_LIBRARY_PATH

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

#  function share_history {
#      history -a
#      history -c
#      history -r
#  }
#  PROMPT_COMMAND='share_history'
#  shopt -u histappend
#  export HISTSIZE=9999
#  export HISTCONTROL=ignoredups 

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/tools:$PATH

export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/Proj/st/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
export GO15VENDOREXPERIMENT=1

export FLUENT_HOST=127.0.0.1
export FLUENT_PORT=24224
export REDIS_ADDR=127.0.0.1
export REDIS_PORT=6379
export SYSTEM_LOG_CONF=/Users/hisaju/Proj/st/go/src/linkedge-modules/src/click/config/log.conf
export LOCAL_PORT=8080
export ERROR_REDIRECT_URL=https://key-stations.com/
export ERROR_BANNER_URL=http://www.odate-yeg.com/wp-content/uploads/2011/06/cbig_banner.jpg
export COOKIE_DOMAIN=localhost
export IMPS_LOCAL_PORT=8080
export CL_LOCAL_PORT=8080
export CV_LOCAL_PORT=8080

# export AWS_ACCESS_KEY_ID=AKIAJSO6EMWEJOK23K7A
# export AWS_SECRET_ACCESS_KEY=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
export DEPLOY_SSH_KEYS=

export PATH=~/Library/Python/3.7/bin:$PATH
