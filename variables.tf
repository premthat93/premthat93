# Define variables for the resource group
variable "resource_group_name" {
  description = "Name of the Azure resource group"
  default     = "aks-resource-group"
 
}

variable "location" {
  description = "Location/region where the resource group will be created"
  default     = "australiaeast"

}

# Define variables for the AKS cluster
variable "cluster_name" {
  description = "Name of the AKS cluster"
  default     = "aks-cluster"
}

variable "dns_prefix" {
  description = "DNS prefix for the AKS cluster"
  default     = "my-aks-cluster-dns"
}

variable "node_count" {
  description = "Number of nodes in the default node pool"
  default     = 1
}

variable "vm_size" {
  description = "VM size for each node in the default node pool"
  default     = "Standard_D2_v2"
}

variable "os_disk_size_gb" {
  description = "OS disk size in GB for each node in the default node pool"
  default     = 30
}