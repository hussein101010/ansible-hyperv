NET USER ansible_user "root" /ADD
NET LOCALGROUP "Administrators" "root" /ADD
Set-Item -Path WSMan:\localhost\Service\Auth\Basic -Value $true
Set-Item -Path WSMan:\localhost\Service\AllowUnencrypted -Value $true
netsh advfirewall firewall add rule name="WinRM" dir=in action=allow protocol=TCP localport=5985 remoteip=10.27.5.129