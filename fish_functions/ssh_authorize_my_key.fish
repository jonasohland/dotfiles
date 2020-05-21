function ssh_authorize_my_key
ssh $argv[1]@$argv[2] "mkdir -p ~/.ssh && echo \""(cat ~/.ssh/id_rsa.pub)"\" >> ~/.ssh/authorized_keys"
end
