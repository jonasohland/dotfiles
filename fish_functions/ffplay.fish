function ffplay
command ffplay -hide_banner -protocol_whitelist file,sap,sdp,udp,tcp,rtsp,rtp,http,https $argv
end