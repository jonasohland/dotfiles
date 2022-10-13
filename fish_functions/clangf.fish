function clangf
    for dir in $argv
        set _current_wdir (pwd)
        cd $dir
        echo "Running clang-format in $dir"
        _clangf **.{c,cpp,cc,cxx,h,hpp,hh,hxx,ipp}
        cd $_current_wdir
    end
end
