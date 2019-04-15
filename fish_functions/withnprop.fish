function withnprop
	echo "let o = "(cat $argv[1])";o"$argv[2]" = "$argv[3]"; process.stdout.write(JSON.stringify(o));" | node 
end
