function vi-mode
    if test -n "$argv"
        if [ $argv = "off" ]
            fish_default_key_bindings
        else
            fish_vi_key_bindings
        end
    else
        fish_vi_key_bindings
    end
end
