resource "azurerm_service_plan" "serviceplan" {
  name                = var.serviceplan_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  os_type             = var.serviceplan_type
  sku_name            = var.serviceplan_sku
}

resource "azurerm_linux_function_app" "functionapp" {
  name                = var.serviceplan_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location

  storage_account_name       = azurerm_storage_account.sg.name
  storage_account_access_key = azurerm_storage_account.sg.primary_access_key
  service_plan_id            = azurerm_service_plan.serviceplan.id
  
  zip_deploy_file = data.archive_file.python_function_package.output_path
  app_settings              = "${var.app_settings}"

  site_config {
    application_stack {
        python_version = "3.10"
    }
  }

}