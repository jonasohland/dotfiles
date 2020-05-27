function ssh_cisco_sg300
ssh -oKexAlgorithms=+diffie-hellman-group1-sha1 -c aes128-ctr $argv
end
