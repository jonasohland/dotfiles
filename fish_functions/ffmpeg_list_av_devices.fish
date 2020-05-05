function ffmpeg_list_av_devices
ffmpeg -f avfoundation -list_devices true -i ""
end
