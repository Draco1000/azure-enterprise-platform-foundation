targetScope = 'subscription'

@description('Name of the policy definition')
param policyName string = 'northstar-require-environment-tag'

resource tagPolicy 'Microsoft.Authorization/policyDefinitions@2023-04-01' = {
  name: policyName
  properties: {
    policyType: 'Custom'
    mode: 'Indexed'
    displayName: 'Northstar - Require environment tag'
    description: 'Audits taggable resources missing the environment tag'
    policyRule: {
      if: {
        field: 'tags[environment]'
        exists: 'false'
      }
      then: {
        effect: 'audit'
      }
    }
  }
}
