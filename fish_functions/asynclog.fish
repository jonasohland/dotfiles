function asynclog
    if test -f $FISH_ASYNC_LAST_LOG
        less $FISH_ASYNC_LAST_LOG
        if test $argv = "-k"
            set -x FISH_ASYNC_LAST_LOG ""
        else
            rm $FISH_ASYNC_LAST_LOG
            set -x FISH_ASYNC_LAST_LOG ""
        end
    else
        _print_error "No recent log file"
    end
end
