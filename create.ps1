##
write-output "Hello world"

if (! $env:ACTSESSIONID ){
  Connect-Act -acthost $Env:ActifioIP -actuser $Env:ActUser -password $Env:Password -ignorecerts -quiet
}

udsinfo lsversion 

Disconnect-Act | Out-Null
 
