export LHOST=$(ip a show dev tun0 | awk '/inet / {print $2}' | sed 's/\/23//')
export LPORT=1234
export RHOST=10.129.34.136
export RPORT=1337
