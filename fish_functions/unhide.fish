function unhide
    for file in $argv
        _unhide_helper $file
    end
end
