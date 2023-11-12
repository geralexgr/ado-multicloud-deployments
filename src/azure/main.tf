resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.region
}

resource "azurerm_storage_account" "sg" {
  name                     = "${var.serverless_app_name}sg"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication
}

data "archive_file" "python_function_package" {  
  type = "zip"  
  source_file = "../resources/function.py" 
  output_path = "function.zip"
}