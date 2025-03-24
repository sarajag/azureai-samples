resource cosmosDB 'Microsoft.DocumentDB/databaseAccounts@2024-11-15' =  {
  name: 'sarajag-test-cosmosdb'
  location: 'centralus'
  kind: 'GlobalDocumentDB'
  properties: {
    consistencyPolicy: {
      defaultConsistencyLevel: 'Session'
    }
    disableLocalAuth: true
    enableAutomaticFailover: false
    enableMultipleWriteLocations: false
    enableFreeTier: false
    locations: [
      {
        locationName: 'WestUS'
        failoverPriority: 0
        isZoneRedundant: false
      }
    ]
    databaseAccountOfferType: 'Standard'
  }
}
