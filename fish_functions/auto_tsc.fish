function auto_tsc
	ls $argv | entr -s _tsc_compile
end
