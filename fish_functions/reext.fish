function reext
	for file in (xfiles $argv[1])
mv $file (noext $file).$argv[2]
end
end
