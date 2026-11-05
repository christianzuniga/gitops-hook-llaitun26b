#!/bin/sh
echo "=== ID:"; id; pwd
echo "=== FLAG CANDIDATES:"
for f in /flag /flag.txt /root/flag.txt /root/flag /home/*/flag.txt /home/*/flag /var/flag* /opt/flag* /srv/flag* /app/flag* /flag/*; do
  [ -e "$f" ] && echo "FOUND $f:" && cat "$f" 2>&1
done
echo "=== SEARCH:"
find / -maxdepth 4 -iname '*flag*' 2>/dev/null | head -40
echo "=== GREP:"
grep -rIl 'flag{' /var/www /opt /srv /app /home /tmp 2>/dev/null | head -20
echo "=== DONE"
