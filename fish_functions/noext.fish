function noext --description 'remove the extension from a filename'
	echo $argv | sed 's/\.[^.]*$//'
end
