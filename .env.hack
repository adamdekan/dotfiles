export LHOST=$(ip a show dev tun0 | awk '/inet / {print $2}' | sed 's/\/23//')
export LPORT=1234
export RHOST=
export RPORT=
