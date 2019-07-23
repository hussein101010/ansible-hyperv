#!/bin/bash
$ping = New-Object System.Net.Networkinformation.Ping
1..254 | % { $ping.send(“172.18.69.$_”) | select address, status }
