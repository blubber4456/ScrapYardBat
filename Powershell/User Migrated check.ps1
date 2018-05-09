$Server = Read-Host -Prompt 'Input your server name'
$User = Read-Host -Prompt 'Input the user name'
#Write-Host "You input server '$Server' and '$User' on '$Date'" 
#get-aduser -server $server -Identity $user -Properties extensionAttribute13 | select GivenName,Surname,extensionAttribute13
$ADAtt = Get-aduser -server $server -Identity $user -Properties extensionAttribute13 | select extensionAttribute13
#Write-host "testing '$ADUser' Testing"
#if($ADUser=Complete){Write-host "BOO YAH"}
Write-host "The status is: '$ADAtt' If it says Completed the mail is defnitly migrated"
Read-Host -Prompt "Press Enter to continue"