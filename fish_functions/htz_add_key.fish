function htz_add_key
mkdir -p __/.ssh
cd __
scp $argv[1]:/.ssh/authorized_keys (pwd)/.ssh/authorized_keys
for key in $argv[2..-1]
cat $key >> (pwd)/.ssh/authorized_keys
end
scp -r .ssh $argv[1]:/
cd ..
rm -r __
end
