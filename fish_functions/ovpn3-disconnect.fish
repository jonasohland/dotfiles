function ovpn3-disconnect
openvpn3 session-manage --path  (openvpn3 sessions-list | awk '$1=="Path:" {print $2}') --disconnect
end
