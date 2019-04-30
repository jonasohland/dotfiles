function listens
	lsof -p (_pid_of $argv) | grep LISTEN
end
