function ovpn3-connect
    if count $argv > /dev/null
        set profile_name $argv[1]
    else
        set profile_name "default"
    end
    echo "Using profile" (__green $profile_name)
    set old_path (ovpn3-session-path $profile_name)
    if test -n "$old_path"
        echo (__red "There is already an active session for this profile")
        return 1
    else
        openvpn3 session-start --config=$HOME/.ovpn/$profile_name.ovpn
    end
end
