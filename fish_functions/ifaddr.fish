function ifaddr --description 'find the address of a network interface'
	set ifconf_out (echo (string trim (ifconfig $argv | grep broadcast)) | tr " " "\n")
echo $ifconf_out[2]
end
