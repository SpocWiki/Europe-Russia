# Set the path to the root directory
$rootPath = Get-Location #"C:\Your\Root\Directory"

# Get all files and folders recursively
Get-ChildItem -Path $rootPath -Recurse |
    ForEach-Object {
        # New name logic goes here
        $newName = $_.Name -replace "State~(.*)", "$1"

Write-Host $newName

        # # Build the new path
        # $newPath = Join-Path -Path $_.PSParentPath -ChildPath $newName

        # # Rename the item
        # Rename-Item -Path $_.FullName -NewName $newName -Force
    }
