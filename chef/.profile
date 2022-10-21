#	$NetBSD: dot.profile,v 1.8.4.1 2012/04/12 17:12:06 riz Exp $
#

LANG=en_US.UTF-8
LC_CTYPE=en_US.UTF-8
LC_ALL=""
TZ=America/New_York
export LANG LC_CTYPE LC_ALL TZ

export EDITOR=vi
export EXINIT="se sm ai redraw sw=4"
export VISUAL=${EDITOR}

#export PAGER=more

# Set your default printer, if desired.
#export PRINTER=change-this-to-a-printer

# Set the search path for programs.
PATH=$HOME/.bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin
export PATH

if test -z "${XDG_RUNTIME_DIR}"; then
	export XDG_RUNTIME_DIR=/tmp/$(id -u)-runtime-dir
	if ! test -d "${XDG_RUNTIME_DIR}"; then
		mkdir "${XDG_RUNTIME_DIR}"
		chmod 0700 "${XDG_RUNTIME_DIR}"
	fi
fi

# Configure the shell to load .shrc at startup time.
# This will happen for every shell started, not just login shells.
export ENV=$HOME/.mkshrc
