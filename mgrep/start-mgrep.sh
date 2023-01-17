#!/bin/sh
#set -e
# Start mgrep daemon

# Mgrep doesn't start without a valid dictionary file.  If dictionary file is no
#[ -f /srv/mgrep/dictionary/dictionary.txt ] || echo 

#exec /usr/local/bin/mgrep --port 55555 -w /srv/mgrep/word_divider.txt -c /srv/mgrep/CaseFolding.txt -f /srv/mgrep/dictionary/dictionary.txt
/usr/local/bin/mgrep --port 55555 -w /srv/mgrep/word_divider.txt -c /srv/mgrep/CaseFolding.txt -f /srv/mgrep/dictionary/dictionary.txt

# the mgrep binary that we have daemonizes on start so we have to use this trick for docker not to quit
while true; do sleep 1000; done
