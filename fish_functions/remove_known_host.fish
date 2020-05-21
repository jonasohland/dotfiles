function remove_known_host
sed -i "" -e $argv"d" ~/.ssh/known_hosts
end
