resource stg 'Microsoft.Storage/storageAccounts@2019-06-01' = {
  name: uniqueString(resourceGroup().id)
  location: 'eastus'
  kind: 'Storage'
  sku: {
    name: 'Standard_LRS'
  }
}

resource test 'Microsoft.Compute/virtualMachines@2022-08-01' = {
  name: 'test'
  location: 'uksouth'
}
