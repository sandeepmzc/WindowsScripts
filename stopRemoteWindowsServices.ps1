cls
$cred = Get-Credential
$server = 'ip/host'
$service = 'ServiceName' 

invoke-command -Credential $cred -ComputerName $server -ScriptBlock {
    param(
       [Parameter(Mandatory=$True,Position=0)]
       [string]$service
    )
    stop-service $service 
} -ArgumentList $service