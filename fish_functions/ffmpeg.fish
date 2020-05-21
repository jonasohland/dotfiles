function ffmpeg
	command ffmpeg -protocol_whitelist file,udp,tcp,rtp,http,https,rtsp $argv -hide_banner
end
