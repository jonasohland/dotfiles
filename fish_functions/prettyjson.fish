function prettyjson
	cat $argv | python -m json.tool
end
