$ErrorActionPreference = "Stop"
Set-Location C:\Widoco
# replace widoco.jar with the name of your WIDOCO jar file
java -jar widoco.jar -ontFile site\cpm.ttl -outFolder site -rewriteAll -lang en
Copy-Item site\custom\introduction-en.html site\sections\introduction-en.html -Force
Write-Host "Done: http://localhost:8000/index-en.html"