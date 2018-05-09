Import-Csv ".\MachineName.csv" | ForEach-Object {
$MachineName = $_."MachineName"
#Add-Content Unavailable-Machine.txt $MachineName
#$RemoteComputers = @("PC1","PC2")
#check if REmote is enabled: Enter-PSSession -ComputerName localhost
#ENable remote: Enable-PSRemoting
     Try
         {
             Invoke-Command -ComputerName $MachineName -ScriptBlock {Suspend-BitLocker -MountPoint "C:" -RebootCount 1} -ErrorAction Stop
         }
     Catch
         {
             Add-Content Unavailable-Computers.txt $MachineName
         }
    Read-Host -Prompt "Press Enter to continue"
}