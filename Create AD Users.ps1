Clear-Host
Write-Verbose "Setting Arguments" -Verbose
$StartDTM = (Get-Date)     
 
$path = "OU=Users,OU=Logon Simulator,OU=Deployment,DC=ctxlab,DC=local"
$username="lsuser-"
$count=1..50
foreach ($i in $count)
{ New-ADUser -Name $username$i -Path $path -AccountPassword (ConvertTo-SecureString "P@ssw0rd" -AsPlainText -force) -passThru -Enabled $True }
