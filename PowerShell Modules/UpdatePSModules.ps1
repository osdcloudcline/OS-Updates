# Define array of PowerShell 5.1 modules

$PowerShell51OSDModules = @(
"OSD",
"OSDBuilder",
"OSD.Catalogs",
"OSDSUS"
)

$PowerShell51CloudModules = @(
"OSDCloud",
"AutopilotOOBE",
"Azure",
"AzureAD",
"AzureRM",
"Az.Accounts",
"Az.Storage",
"Azure.Storage",
"Az.Compute",
"Az.KeyVault",
"Az.Resources",
"Az.Network",
"Az.Monitor",
"Az.Advisor",
"Az.ApiManagement",
"Az.Analysisservices",
"Az.Automation",
"Az.ApplicationInsights",
"Az.Billing",
"Az.Cdn",
"Az.Batch",
"Az.DataFactory",
"Az.ContainerInstance",
"Az.Sql",
Az.DesktopVirtualization"
)

$PowerShell51MSGraphModules = @(
"Microsoft.Graph",
"Microsoft.Graph.Authentication",
"Microsoft.Graph.Groups",
"Microsoft.Graph.Users",
"Microsoft.Graph.IdentityDirectoryManagement",
"Microsoft.Graph.Intubne",
"Microsoft.Graph.DeviceManagement",
"Microsoft.Graph.Mail",
"Microsoft.Graph.Sites",
"Microsoft.Graph.Teams",
)


$VirtualizationModules = @(

)

$NetworkingModules = @(

)

$MECMModules = @(

)

$MDTModules = @(

)


# Cycle through and update each PowerShell 5.1 module

foreach($ModuleName in $PowerShell51OSDModules){
Write-Host "Detecting PowerShell 5.1 OSD module updates for$ModuleName" -ForegroundColor Cyan
try{
  Update-Module -Name $ModuleName Set-PSRepository -Name "PSGallery" -InstallationPolicy Trusted -Force -ErrorAction SilentlyContinue
  Write-Host "Successfully updated: $ModuleName" -ForgroundColor Green
}
catch{
   Write-Warning "Failed to upgrade $ModuleName. It may not be installed" 
}

# Cycle through and update each PowerShell 5.1 module

foreach($ModuleName in $PowerShell51CloudModules){
Write-Host "Detecting PowerShell 5.1 Cloud module updates for$ModuleName" -ForegroundColor Cyan
try{
  Update-Module -Name $ModuleName Set-PSRepository -Name "PSGallery" -InstallationPolicy Trusted -Force -ErrorAction SilentlyContinue
  Write-Host "Successfully updated: $ModuleName" -ForgroundColor Green
}
catch{
   Write-Warning "Failed to upgrade $ModuleName. It may not be installed" 
}

# Cycle through and update each PowerShell 5.1 module

foreach($ModuleName in $PowerShell51MSGraphModules){
Write-Host "Detecting PowerShell 5.1 Microsoft Graph module updates for$ModuleName" -ForegroundColor Cyan
try{
  Update-Module -Name $ModuleName Set-PSRepository -Name "PSGallery" -InstallationPolicy Trusted -Force -ErrorAction SilentlyContinue
  Write-Host "Successfully updated: $ModuleName" -ForgroundColor Green
}
catch{
   Write-Warning "Failed to upgrade $ModuleName. It may not be installed" 
}
