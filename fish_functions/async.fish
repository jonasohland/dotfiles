function async
    if test $FISH_ASYNC_LAST_LOG != ""
        if test -f $FISH_ASYNC_LAST_LOG
            rm $FISH_ASYNC_LAST_LOG
        end
    end
    set -x FISH_ASYNC_LAST_LOG (pwd)/(echo $argv[1])_async_log_(datestring).log
    eval math 0 + 0 && $argv > $FISH_ASYNC_LAST_LOG &
end
