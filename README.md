# iust-vpn-enabler
Fixes Windows 10 recent versions' issue for connecting to IUST VPN


## How to

Fix connection issue by disabling active probing:
```powershell
Enable-IustVpnMode
```

Reset registry tweaks back to normal:
```powershell
Disable-IustVpnMode
```
