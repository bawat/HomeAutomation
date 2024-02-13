cd "SendIR/trydrvvb1_1_0/"
uutx.exe -fProjectorCodes.txt PowerButton
cd "../.."
TIMEOUT /T 13
MultiMonitorTool.exe /enable 3
cd "SendIR/trydrvvb1_1_0/"
uutx.exe -fProjectorCodes.txt DownButton
uutx.exe -fProjectorCodes.txt SelectButton
uutx.exe -fProjectorCodes.txt DownButton
uutx.exe -fProjectorCodes.txt RightButton
uutx.exe -fProjectorCodes.txt SelectButton
cd "../.."
svcl.exe /SaveProfile "Profile1.spr"
nircmd setdefaultsounddevice "Transmitter" 1
:: nircmd setdefaultsounddevice "MStar Demo" 1
svcl.exe /SetVolume AllAppVolume 0