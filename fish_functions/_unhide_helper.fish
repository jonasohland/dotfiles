function _unhide_helper
    if test (string sub -s 1 -l 1 $argv) = "."
        mv $argv (string sub -s 2 $argv)
    else
        _print_error $argv" is not hidden"
    end
end
