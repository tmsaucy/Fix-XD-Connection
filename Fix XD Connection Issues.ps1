$computer=read-host "Enter XenDesktop name, that is having connection issues: "
Get-Service -Name "Citrix ICA Service" -ComputerName $computer | Restart-Service -Force
Get-Service -Name "Citrix Desktop Service" -ComputerName $computer | Restart-Service -Force
read-host "Success! Please wait 60 seconds, before attempting to connect. 
Press enter key to exit script..."