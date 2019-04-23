function t-sync
	set lastdir (pwd)
    _gr_print "Pulling..."
    cd ~/.task
    git pull --no-edit > /dev/null
    git commit -am "sync commit" > /dev/null
    _gr_print "Pushing..."
    git push > /dev/null
    cd $lastdir
end
