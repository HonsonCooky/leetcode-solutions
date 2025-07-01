Remove-Item -Recurse -Force -Path "out\*"

gcc -c main.c -o .\out\main.o
gcc -c .\solutions\two_sum.c -o .\out\two_sum.o

# Move to out directory
cd out

# List all the object files, in a "space" sperated string.
$objectFiles = Get-ChildItem -Path "." -Filter "*.o" | Select-Object -ExpandProperty Name
$objectFilesString = $objectFiles -join " "

Write-Host "Object Files: $objectFilesString"

$execuatable = "leetcode.exe"
$command = "gcc $objectFilesString -o $execuatable"

Write-Host "Command: $command"
Invoke-Expression $command
Invoke-Expression ".\$execuatable"

