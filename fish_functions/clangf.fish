function clangf
	set _current_wdir (pwd)
cd $argv
clang-format --assume-filename="~/.clang-format" -i **.{c,cpp,cc,cxx,h,hpp,hh,hxx}
cd $_current_wdir
end
