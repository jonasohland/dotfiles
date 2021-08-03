function ovpn3-session-path
    string trim (string join0 (openvpn3 sessions-list | grep "Config name" -B 3 | grep $argv[1].ovpn -B 3 | grep Path: | awk '{print $2}'))
end
