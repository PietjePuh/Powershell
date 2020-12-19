#Get-WmiObject -Class win32_product | select name
$name = Read-Host 'aplication name?'
$b = Get-WmiObject -Class win32_product -Filter "Name like '$name'"
echo $b
rem $b.Uninstall()
