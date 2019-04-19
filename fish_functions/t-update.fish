function t-update
	set current_dir (pwd)
    cd ~/.task
    git pull --no-edit
    cd $current_dir
end
