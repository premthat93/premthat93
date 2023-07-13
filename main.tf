
# Create the Azure resource group to contain the AKS cluster
resource "azurerm_resource_group" "aks_rg" {
  name     = var.resource_group_name
  location = var.location
}

# Provision the AKS cluster
resource "azurerm_kubernetes_cluster" "aks_cluster" {
  name                = var.cluster_name
  location            = azurerm_resource_group.aks_rg.location
  resource_group_name = azurerm_resource_group.aks_rg.name
  dns_prefix          = var.dns_prefix

  # Configure the default node pool for the AKS cluster
  default_node_pool {
    name             = "default"
    node_count       = var.node_count
    vm_size          = var.vm_size
    os_disk_size_gb  = var.os_disk_size_gb
  }

  # Enable system-assigned identity for the AKS cluster
  identity {
    type = "SystemAssigned"
  }
}

