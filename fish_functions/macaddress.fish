function macaddress
	ifconfig $argv | grep -o -E '([[:xdigit:]]{1,2}:){5}[[:xdigit:]]{1,2}'
end
