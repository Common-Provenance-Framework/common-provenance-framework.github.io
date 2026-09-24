$ErrorActionPreference = "Stop"
Set-Location C:\Widoco

# 1) regenerate the documentation from the ontology
java -jar widoco.jar -ontFile site/cpm.ttl -outFolder site/ -getOntologyMetadata -rewriteAll -lang en
if ($LASTEXITCODE -ne 0) { throw "WIDOCO failed" }

# 2) replace generated sections with the hand-written ones kept in site\custom
#    (every *-en.html in site\custom overwrites the section file of the same name)
Get-ChildItem site\custom\*-en.html | ForEach-Object {
    Copy-Item $_.FullName (Join-Path site\sections $_.Name) -Force
    Write-Host "Custom section: $($_.Name)"
}

Write-Host "Done: http://localhost:8000/index-en.html"