resource appServicePlan 'Microsoft.Web/serverfarms@2022-09-01' = {
  name: 'nombreUnicoDelPlan'
  location: 'southcentralus'
  sku: {
    name: 'F1'
    tier: 'Free'
  }
}

resource appService 'Microsoft.Web/sites@2022-09-01' = {
  name: 'rg_lab_test_AppService'
  location: 'southcentralus'
  properties: {
    serverFarmId: appServicePlan.id
  }
}
