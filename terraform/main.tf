# Create a Resource Group in Azure
resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.location
}

# Create Azure Container Registry (ACR)
resource "azurerm_container_registry" "acr" {
  name                = var.acr_name # Ensure this is globally unique
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku                 = "Basic"
  admin_enabled       = true # Enabling admin user for easy authentication
}

# Create Azure Kubernetes Service (AKS) Cluster
resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.aks_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = var.aks_dns_prefix

  default_node_pool {
    name       = "default"
    node_count = 3
    vm_size    = "Standard_DS2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Development"
  }

}


