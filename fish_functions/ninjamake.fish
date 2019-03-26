function ninjamake
	rm -rf *
cmake -GNinja .. $argv
ninja
end
