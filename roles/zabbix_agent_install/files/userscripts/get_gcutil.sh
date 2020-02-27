#!/bin/sh -u

# self information
prog=$( basename $0 )

# parameter check
if [ $# -eq 0 -o $# -gt 2 ]; then
        echo "Usage: $prog <profile_name> <type>" >&2
        exit 1
fi

profile_name=${1:-"unknown"}
type=${2:-"fgc"}

case $type in
  s0)   awk_scriptlet='{print $1}';;
  s1)   awk_scriptlet='{print $2}';;
  eden) awk_scriptlet='{print $3}';;
  old)  awk_scriptlet='{print $4}';;
  perm) awk_scriptlet='{print $5}';;
  ygc)  awk_scriptlet='{print $6}';;
  ygct) awk_scriptlet='{print $7}';;
  fgc)  awk_scriptlet='{print $8}';;
  fgct) awk_scriptlet='{print $9}';;
  gct)  awk_scriptlet='{print $10}';;
  *)    echo "Usage: $prog <profile_name> <type>" >&2
        echo "  <type>: s0|s1|eden|old|perm|ygc|ygct|fgc|fgct|gct"  >&2
        exit 1
        ;;
esac

# main logic
pid=$( ps -wweo pid,args | fgrep 'org.jboss.Main' | fgrep "${profile_name} " | grep -v grep | awk '{print $1}')
if [ -n "$pid" ]; then
        /usr/bin/jstat -gcutil $pid | grep -vE 'FGC' | awk "$awk_scriptlet"
else
        echo "$prog: jvm process for $profile_name not found." >&2
        exit 1
fi
