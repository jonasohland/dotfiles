function t-sync
	set lastdir (pwd)
    cd ~/.task
    git pull
    git commit -am "sync commit"
    git push
    cd $lastdir
end
