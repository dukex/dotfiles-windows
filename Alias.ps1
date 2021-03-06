 Remove-Item alias:IP -ErrorAction SilentlyContinue 
 Remove-Item alias:gpsh -ErrorAction SilentlyContinue
 Remove-Item alias:gplr -ErrorAction SilentlyContinue
 Remove-Item alias:gpp -ErrorAction SilentlyContinue
 Remove-Item alias:gcm -Force -ErrorAction SilentlyContinue

Function Get-IP4 {Ipconfig | sls IPv4}
 New-Alias IP Get-IP4

Function Git-Current-Branch { Get-GitStatus | Select -ExpandProperty "Branch" }

Function Git-PushCurrentBranch{ git push origin $(Git-Current-Branch) }
 New-Alias gpsh Git-PushCurrentBranch

Function Git-PullCurrentBranch{ git pull --rebase origin $(Git-Current-Branch) }
 New-Alias gplr Git-PullCurrentBranch

Function Git-PullPushCurrentBranch{ Git-PullCurrentBranch; Git-PushCurrentBranch  }
 New-Alias gpp Git-PullPushCurrentBranch

Function Git-CommitMessage([string]$message){ git commit -m "$message" }
 New-Alias gcm Git-CommitMessage

