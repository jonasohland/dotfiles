function ovpn3-set-default
    mkdir -p ~/.ovpn
    cp $argv[1] ~/.ovpn/default.ovpn
end

