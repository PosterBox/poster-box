#!/bin/bash

RUNAS=coney
RAILS_ROOT=/opt/git-repo/poster-box/
LOG=/var/log/poster-box.log

if [[ `whoami` == $RUNAS ]]; then
	#export RAILS_ENV=production
	export HOST=192.168.20.254:3000
	export PATH="$PATH:$HOME/.rvm/bin"
	[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
	cd $RAILS_ROOT
	nohup rails s > $LOG &
else
	touch $LOG
	chmod a+w $LOG
	su -c "$0" $RUNAS
fi



