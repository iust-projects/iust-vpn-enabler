function Enable-IustVpnMode {
    Write-Host "Switching 'EnableActiveProbing' to 0"
    Set-ItemProperty "HKLM:\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" -Name EnableActiveProbing -Value 0
    Write-Host "Succesfully switched. Use `Disable-IustVpnMode` to reset back to normal." -ForegroundColor Green
    Write-Host "Opening login page:"
    Start-Process "https://its.iust.ac.ir/hotspot/login.php"
}

function Disable-IustVpnMode {
    Write-Host "Switching 'EnableActiveProbing' to 1"
    Set-ItemProperty "HKLM:\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" -Name EnableActiveProbing -Value 1
    Write-Host "Succesfully switched. Use `Enable-IustVpnMode` to go back to vpn mode." -ForegroundColor Green
}
