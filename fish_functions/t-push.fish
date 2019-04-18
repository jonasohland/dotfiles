function t-push
	set last_dir (pwd)
cd ~/.task/
git commit -am "pushtimes commit"
git push
cd $last_dir
end
