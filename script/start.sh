#!/bin/bash

RUNAS=pi
RAILS_ROOT=/opt/git-repo/poster-box/
LOG=/var/log/poster-box.log

if [[ `whoami` == $RUNAS ]]; then
	#export RAILS_ENV=production
	export PATH="$PATH:$HOME/.rvm/bin"
	[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
	cd $RAILS_ROOT
	HOST=192.168.20.254 nohup rails s > $LOG &
else
	touch $LOG
	chmod a+w $LOG
	su -c "$0" $RUNAS
fi



