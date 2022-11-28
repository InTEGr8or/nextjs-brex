# ## Get examples
# Get Examples
$projPath = "C:/repos/nextjs/nextjs-brex"
$examplesPath = "C:/repos/nextjs/next.js/examples"
Get-ChildItem $examplesPath | Select-Object Name | Set-Variable examples
# Get branches
git branch -l | ForEach-Object {$_[2..100] -Join ''} | Set-Variable existingBranches
# ## Make branches
Push-Location $projPath
git checkout main
git pull
git add .
git commit -m "Updates"
$examples[0..5] | ForEach-Object {
    if(-Not $existingBranches.Contains($_.Name)) {
        Write-Host "Adding branch $($_.Name)"
        git checkout main
        git checkout -b $($_.Name)
        Copy-Item $examplesPath/$($_.Name)/* .
        git add .
        git commit -m 'Add files from Exampls'
        git push -u origin "$($_.Name)"
    }
}
Pop-Location 