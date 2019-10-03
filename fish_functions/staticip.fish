function staticip
	sudo ifconfig $argv[1] inet $argv[2] netmask $argv[3]
end
