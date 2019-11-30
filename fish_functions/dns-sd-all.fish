function dns-sd-all
	if test -n "$argv[1]"
dns-sd -i $argv[1] -B _services._dns-sd._udp
else
dns-sd -B _services._dns-sd._udp
end
end
