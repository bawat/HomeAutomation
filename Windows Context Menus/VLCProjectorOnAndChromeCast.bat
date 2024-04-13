@echo off
PUSHD "E:/Important Keep/Stream Deck/Projector Controls"
CALL EnableProjector.bat
POPD
echo VLC opened
start /wait "" "C:\Program Files (x86)\VideoLAN\VLC\vlc.exe" "%1" --sout="#chromecast{ip=192.168.1.93}" --demux-filter=demux_chromecast
echo VLC closed
PUSHD "E:/Important Keep/Stream Deck/Projector Controls"
CALL DisableProjector.bat
POPD