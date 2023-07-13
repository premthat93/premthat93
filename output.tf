# output.tf

output "kube_config" {
  description = "Kubeconfig for accessing the AKS cluster"
  value       = azurerm_kubernetes_cluster.aks_cluster.kube_config_raw
  sensitive = true
}

output "cluster_name" {
  description = "Name of the AKS cluster"
  value       = azurerm_kubernetes_cluster.aks_cluster.name
}

output "resource_group_name" {
  description = "Name of the resource group"
  value       = azurerm_resource_group.aks_rg.name
}

output "location" {
  description = "Location/region of the resource group"
  value       = azurerm_resource_group.aks_rg.location
}