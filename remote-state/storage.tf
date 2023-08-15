
# Create a storage account to store the central Terraform state.
resource "azurerm_storage_account" "tfstateac" {
  name                      = var.sbx_tf_storage_account # Name of the storage account, provided as a variable.
  resource_group_name       = var.sbx_resgroup_name      # Name of the resource group, provided as a variable.
  location                  = var.sbx_default_location   # Location where the storage account will be created, provided as a variable.
  account_tier              = "Standard"                 # Specifies the performance and redundancy of the storage account.
  account_replication_type  = "LRS"                      # Specifies the type of replication to be used for data redundancy.
  enable_https_traffic_only = true                       # Enforces HTTPS-only access to the storage account.

  # Note: Additional settings like network rules, encryption, etc. can be configured here.
}

# Define a blob container within the storage account to store the Terraform backend state.
resource "azurerm_storage_container" "tfstate" {
  name                  = "terraformstate"           # Name of the blob container for storing the Terraform state.
  storage_account_name  = var.sbx_tf_storage_account # Name of the storage account, provided as a variable.
  container_access_type = "private"                  # Specifies the access level for the blob container.

  depends_on = [azurerm_storage_account.tfstateac]
}

