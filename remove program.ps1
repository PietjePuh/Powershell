#Get-WmiObject -Class win32_product | select name

$computer = "localhost"
$b = Get-WmiObject -Class win32_product -Filter "Name like 'mRemoteNG'"
echo $b
rem $b.Uninstall()