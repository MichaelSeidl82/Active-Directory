<#

www.au2mator.com/PowerShell
PowerShell Self Service Portal

#>

import-module activedirectory

$Server=Get-ADComputer -Filter {OperatingSystem -Like "Windows Server*"} -Properties OperatingSystem, OperatingSystemServicePack, OperatingSystemVersion, Name, LastLogonDate | select OperatingSystem, OperatingSystemServicePack, OperatingSystemVersion, Name, LastLogonDate
$Server | Export-Csv -Path C:\_Scripts\Serverlist\Serverlist.csv


$DC = [System.DirectoryServices.ActiveDirectory.Domain]::GetCurrentDomain()
$DCs=$DC.DomainControllers 
$DCs | Export-Csv -Path C:\_Scripts\Serverlist\DomainController.csv



