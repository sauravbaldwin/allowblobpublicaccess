$storages = Get-Content -path Desktop\storage_nonprod.csv
foreach ($storage in $storages)
{
$resource=Get-AzResource -Name $storage
Set-AzStorageAccount -ResourceGroupName $resource.ResourceGroupName -Name $resource.Name -AllowBlobPublicAccess $false
}
