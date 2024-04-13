:: MultiMonitorTool.exe /disable 3
:: nircmd setdefaultsounddevice "Realtek Digital Output" 1
cd "SendIR/trydrvvb1_1_0/"
uutx.exe -fProjectorCodes.txt PowerButton
uutx.exe -fProjectorCodes.txt PowerButton
:: svcl.exe /LoadProfile "Profile1.spr"