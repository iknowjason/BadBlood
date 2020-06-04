$url = "https://github.com/iknowjason/BadBlood/archive/master.zip"

$output = "C:\BadBlood.zip"

$start_time = Get-Date

Invoke-WebRequest -Uri $url -Outfile $output

Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)" 

expand-archive -path "C:\BadBlood.zip" -destinationpath '.\BadBlood'

Set-Location -Path "C:\BadBlood\BadBlood-master"

.\Invoke-Badblood.ps1
