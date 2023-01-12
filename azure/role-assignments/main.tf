data "azurerm_subscription" "primary" {}


resource "azurerm_role_assignment" "reader" {
  for_each             = toset(var.reader_principal_ids)
  scope                = data.azurerm_subscription.primary.id
  role_definition_name = "Reader"
  principal_id         = each.value
}

resource "azurerm_role_assignment" "contributor" {
  for_each             = toset(var.contributor_principal_ids)
  scope                = data.azurerm_subscription.primary.id
  role_definition_name = "Contributor"
  principal_id         = each.value
}

resource "azurerm_role_assignment" "owner" {
  for_each             = toset(var.owner_principal_ids)
  scope                = data.azurerm_subscription.primary.id
  role_definition_name = "Owner"
  principal_id         = each.value
}
