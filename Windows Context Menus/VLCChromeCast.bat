@echo off
start /wait "" "C:\Program Files (x86)\VideoLAN\VLC\vlc.exe" "%1" --sout="#chromecast{ip=192.168.1.93}" --demux-filter=demux_chromecast
exit