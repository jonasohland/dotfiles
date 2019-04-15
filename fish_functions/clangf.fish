function clangf
	for file in (echoallxfiles $argv)
clang-format -i $file
end
end
