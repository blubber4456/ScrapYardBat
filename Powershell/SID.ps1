$objUser = New-Object System.Security.Principal.NTAccount("Markit.Partners", "Dave.Allen")
$strSID = $objUser.Translate([System.Security.Principal.SecurityIdentifier]) 
$strSID.Value
##Simple:
##Get-ADUser -Server info.corp -Identity 'honeypot' | select SID