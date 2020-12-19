#aan maken folder
set-location C:\
New-Item -Path "c:\" -Name "temp" -ItemType "directory" -Force

#Questions
Read-Host 'How many users at a site are affected?' >> C:\dml\info_output.txt
Read-Host 'Exact and detailed problem description' >> C:\dml\info_output.txt
Read-Host 'Location' >> C:\dml\info_output.txt
Read-Host 'how are you connected to the internet / intranet ?' >> C:\dml\info_output.txt
Read-Host 'are you using VPN?'
Read-Host 'When did it not work or started?'

$host1 = Read-Host 'webpage not reached?'
$host2 = Read-Host 'webpage reached?

#user info 
$user = $env:USERNAME
$domain = $env:USERDOMAIN
$computername = $env:computername 
Get-Date 
Get-CimInstance -Class Win32_NetworkConnection | FL
Get-NetAdapter
Get-NetIPConfiguration -All | FL
Get-NetIPAddress | FL
Get-DnsClient
Test-netConnection google.com -Traceroute -InformationLevel Detailed >> C:\dml\info_output.txt

Test-netConnection $host1 -Traceroute -InformationLevel Detailed
Test-netConnection $host2  -Traceroute -InformationLevel Detailed
tnc pon.local 
Trace-Route -TargetHost $host
# Get-Command -Module Net* | Group Module
#nslookup 
Test-Connection 10.200.27.2 

## all ip in the range off (change value)
# 1..20 | % { $a = $_; write-host "------"; write-host "10.0.0.$a"; 22,53,80,445 | % {echo ((new-object Net.Sockets.TcpClient).Connect("10.0.0.$a",$_)) "Port $_ is open!"} 2>$null}
