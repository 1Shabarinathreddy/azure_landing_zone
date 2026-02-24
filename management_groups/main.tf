resource "azurerm_management_group" "root" {
  name         = var.root_management_group_id
  display_name = var.root_management_group_name
}

resource "azurerm_management_group" "hierarchy" {
  for_each = var.management_group_hierarchy

  name         = each.key
  display_name = each.value.display_name

  parent_management_group_id = each.value.parent_id == "root" ? (
    azurerm_management_group.root.id
  ) : (
    azurerm_management_group.hierarchy[each.value.parent_id].id
  )

  depends_on = [azurerm_management_group.root]
}
