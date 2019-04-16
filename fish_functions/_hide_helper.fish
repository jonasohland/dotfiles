function _hide_helper
    if test (string sub -s 1 -l 1 $argv) != "."
        mv $argv .$argv
    else
        _print_error $argv" is hidden"
    end
end
