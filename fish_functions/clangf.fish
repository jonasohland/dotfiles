function clangf
	set _current_wdir (pwd)
    cd $argv
    _clangf **.{c,cpp,cc,cxx,h,hpp,hh,hxx}
    cd $_current_wdir
end
