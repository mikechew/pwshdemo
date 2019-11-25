##
write-output "Hello world"

if (! $env:ACTSESSIONID ){
  Connect-Act -acthost $Env:ActifioIP -actuser $Env:ActUser -password $Env:ActPassword -ignorecerts -quiet
}

udsinfo lsversion 

Disconnect-Act | Out-Null
 
