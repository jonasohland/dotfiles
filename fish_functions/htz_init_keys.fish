function htz_init_keys
mkdir -p __/.ssh
cd __
for key in $argv[2..-1]
cat $key >> (pwd)/.ssh/authorized_keys
end
scp -r .ssh $argv[1]:/
cd ..
rm -r __
end
