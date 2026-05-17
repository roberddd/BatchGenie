
$venvActivatePath = "venv/Scripts/Activate.ps1"

if (Test-Path $venvActivatePath) {
    # Activate the virtual environment
    & $venvActivatePath

    #Choose between main site, subsite, or both
    $siteChoice = Read-Host "Which site would you like to serve? (Enter '1' for the main site, '2' for the landing-page, or '3' to run both sites)"

    if ($siteChoice -eq "1") {
        Write-Host "Starting main site on port 8000..."
        Start-Process powershell -ArgumentList "mkdocs serve -a 0.0.0.0:8000"
    } elseif ($siteChoice -eq "2") {
        Write-Host "Starting subsite on port 9000..."
        Start-Process powershell -ArgumentList "cd landing-page; mkdocs serve -a 0.0.0.0:9000"
    } elseif ($siteChoice -eq "3") {
        Write-Host "Starting both main site and subsite..."
        Start-Process powershell -ArgumentList "mkdocs serve -a 0.0.0.0:8000"
        Start-Process powershell -ArgumentList "cd landing-page; mkdocs serve -a 0.0.0.0:9000"
    } else {
        Write-Host "Invalid choice. Please enter 'main', 'subsite', or 'both'."
    }
} else {
    Write-Host "Virtual environment activation script not found."
}