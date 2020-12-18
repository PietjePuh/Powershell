@echo off
rem ###################################################################################
rem # This batch file can be ued to retrieve information from a laptop / desktop that #
rem # runs windows 7 or 8, maybe 10. Stil needs to see if this could be made into a   #
rem # remote powershell script, based on computer name if that could retrieve all     #
rem # info.                                                                           #
rem ###################################################################################

cd\
md c:\temp
date /T >>C:\temp\info_output.txt
time /T >> C:\temp\info_output.txt

ipconfig /all >>C:\temp\info_output.txt
  echo. >>C:\temp\info_output.txt
  echo. >>C:\temp\info_output.txt
  echo ==========================>>C:\temp\info_output.txt
  echo. >>C:\temp\info_output.txt
tracert 8.8.8.8 >> C:\temp\info_output.txt
  echo. >>C:\temp\info_output.txt
  echo. >>C:\temp\info_output.txt
  echo ==========================>>C:\temp\info_output.txt
  echo. >>C:\temp\info_output.txt
nslookup google.com >> C:\temp\info_output.txt
  echo. >>C:\temp\info_output.txt
  echo. >>C:\temp\info_output.txt
  echo ==========================>>C:\temp\info_output.txt
  echo. >>C:\temp\info_output.txt

netsh lan show interfaces >> C:\temp\info_output.txt
  echo. >>C:\temp\info_output.txt
  echo. >>C:\temp\info_output.txt
  echo ==========================>>C:\temp\info_output.txt
  echo. >>C:\temp\info_output.txt
netsh wlan show all >> C:\temp\info_output.txt
  echo. >>C:\temp\info_output.txt
  echo. >>C:\temp\info_output.txt
  echo ==========================>>C:\temp\info_output.txt
  echo. >>C:\temp\info_output.txt
rem netsh int ipv4 reset >> C:\temp\info_output.txt
  echo. >>C:\temp\info_output.txt
  echo ==========================>>C:\temp\info_output.txt
route print >> C:\temp\info_output.txt
  echo. >>C:\temp\info_output.txt
  echo ==========================>>C:\temp\info_output.txt
  echo ===end=== >>C:\temp\info_output.txt


echo === Done gathering ===
pause>nul
