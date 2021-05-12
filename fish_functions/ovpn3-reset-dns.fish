function ovpn3-reset-dns
sudo cp /etc/resolv.conf.ovpn3bak /etc/resolv.conf
sudo service systemd-resolved restart
end
