function async
    if test -f $FISH_ASYNC_LAST_LOG
        rm $FISH_ASYNC_LAST_LOG
    end
    set -x FISH_ASYNC_LAST_LOG (pwd)/(echo $argv[1])_async_log_(datestring).log
    eval $argv > "$FISH_ASYNC_LAST_LOG" &
end
