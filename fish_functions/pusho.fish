function pusho
	git push --set-upstream origin (git branch | grep \* | cut -d ' ' -f2)
end
