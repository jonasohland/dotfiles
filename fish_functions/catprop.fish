function catprop
	echo "let obj = "(cat $argv[1])"; console.log(obj"$argv[2]");" | node
end
