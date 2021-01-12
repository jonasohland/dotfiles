function ovpn3-connect-default
openvpn3 session-start --config (cat ~/.ovpn3-default)
end
