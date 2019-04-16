function run
	eval _gr_print "running $argv[1] as background job..." && $argv > /dev/null &
end
