##
write-output "Hello world"

. .\actfunc2.ps1

ActPC

if (! $env:ACTSESSIONID ){
  Connect-Act -acthost $Env:ActifioIP -actuser $Env:ActUser -password $Env:ActPassword -ignorecerts -quiet
}

udsinfo lsversion 

Disconnect-Act | Out-Null
 
