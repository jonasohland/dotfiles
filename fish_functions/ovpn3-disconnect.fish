function ovpn3-disconnect
    if count $argv > /dev/null
        set profile_name $argv[1]
    else
        set profile_name "default"
    end
    echo "Using profile" (__green $profile_name)
    set session_path (ovpn3-session-path $profile_name)
    if test -z $session_path
        echo (__red "No active session for this profile")
        return 1
    else
        openvpn3 session-manage --path $session_path -D
    end
end

