function echoallxfiles
	for x in *
if test -e $x
if [ (ext $x) = $argv ]
echo $x
end
end
end
end
