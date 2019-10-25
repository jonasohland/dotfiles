function scmakeinstall
	sudo cmake --build $argv --target install | xcpretty
end
