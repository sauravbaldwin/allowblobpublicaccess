$storages = Get-Content -path Desktop\xxxx\xxxx\storage_List.csv
foreach ($storage in $storages)
{
$resource=Get-AzResource -Name $storage
Set-AzStorageAccount -ResourceGroupName $resource.ResourceGroupName -Name $resource.Name -AllowBlobPublicAccess $false
}
