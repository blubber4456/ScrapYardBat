Import-Csv ".\MachineName.csv" | ForEach-Object {
$MachineName = $_."MachineName"
Add-Content Unavailable-Machine.txt $MachineName
}