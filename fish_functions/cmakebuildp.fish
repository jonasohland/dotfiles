function cmakebuildp
	cmake --build $argv | xcpretty
end
