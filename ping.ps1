$ping = New-Object System.Net.Networkinformation.Ping
50..60 | % { $ping.send(“172.18.69.$_”) | select address, status }