function _pid_arr
	for str in (ps -aef | grep $argv | string split " " | string trim)
if test -n $str
echo $str
end
end
end
