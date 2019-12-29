function _tsc_compile
	tsc
if test $status -eq 0
terminal-notifier -title tsc -message "Compliation done. No Errors"
else
terminal-notifier -title tsc -message "Compliation failed."
end
end
