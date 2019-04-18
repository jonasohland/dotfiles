function t-update
	set current_dir (pwd)
cd ~/.task
git pull
cd $current_dir
end
