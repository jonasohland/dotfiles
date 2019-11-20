function cmake-vim -d "run cmake with configuration vor vim"
    cmake $argv -DCMAKE_EXPORT_COMPILE_COMMANDS=ON
    if test $status -eq 0
        if test -e compile_commands.json
            mv compile_commands.json ../compile_commands.json
        else
            _print_error "Could not find compile_commands.json"
        end
    end
end
