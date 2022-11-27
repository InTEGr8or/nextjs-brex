# ## Get examples
# Get Examples
$examplesPath = "C:/repos/nextjs/next.js/examples"
Get-ChildItem $examplesPath | Select-Object Name | Set-Variable examples
# Get branches
git branch -l | Set-Variable existingBranches
# ## Make branches
$examples | ForEach-Object {
    if($_.Name -EQ $existingBranches[0][2..100] -Join "") {
        Write-Host "
        $($existingBranches[0][2..100] -Join '')
        git checkout main
        git checkout -b $($_.Name)
        cp $examplesPath/$($_.Name)/* .
        "
    }
}