#Requires -RunAsAdministrator

# Import sub-modules/functions into global scope that are required for main functions/cmdlets to operate
Import-Module -Name "$psscriptroot\Get-ActiveNetworkAdapterWinSecureDNS.psm1" -Force -Global
Import-Module -Name "$psscriptroot\Get-ManualNetworkAdapterWinSecureDNS.psm1" -Force -Global
Import-Module -Name "$psscriptroot\CommonResources.psm1" -Force -Global

# Set PSReadline tab completion to complete menu for easier access to available parameters - Only for the current session
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# Stopping the module process if any error occurs
$ErrorActionPreference = 'Stop'

# Everything in here applies to the entire module because this file is the root module and loads in the global scope by module manifest