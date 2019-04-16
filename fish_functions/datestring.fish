function datestring
	string join "_" (string split " " (string split ":" (date)))
end
