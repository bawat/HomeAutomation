@echo off
setlocal

set "fileExtensions=.mkv .mp4 .avi"  REM Add or remove extensions as needed
set "iconPath=E:\\Important Keep\\Stream Deck\\Windows Context Menus\\Chromecast_cast_button_icon.ico"
set "commandPath=\"E:\\Important Keep\\Stream Deck\\Windows Context Menus\\VLCProjectorOnAndChromeCast.bat\" \"%%1\""

REM Create a new .reg file
> VLCChromeCastContextMenu.reg echo Windows Registry Editor Version 5.00
>>VLCChromeCastContextMenu.reg echo.

for %%a in (%fileExtensions%) do (
    >>VLCChromeCastContextMenu.reg echo [HKEY_CLASSES_ROOT\SystemFileAssociations\%%a\shell\Chromecast]
    >>VLCChromeCastContextMenu.reg echo "Icon"="%iconPath%"
    >>VLCChromeCastContextMenu.reg echo [HKEY_CLASSES_ROOT\SystemFileAssociations\%%a\shell\Chromecast\command]
    >>VLCChromeCastContextMenu.reg echo @="%commandPath%"
    >>VLCChromeCastContextMenu.reg echo.
)

endlocal

start VLCChromeCastContextMenu.reg