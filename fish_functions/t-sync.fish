function t-sync
	set lastdir (pwd)
    cd ~/.task
    git pull --no-edit
    git commit -am "sync commit"
    git push
    cd $lastdir
end
